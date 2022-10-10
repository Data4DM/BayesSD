import os
from typing import List, Set, Type, Tuple
import ast, glob, re

import numpy

from .stan_block_builder import *
from .utilities import vensim_name_to_identifier
from pysd.translators.structures.abstract_expressions import *
import cmdstanpy

class SamplingStatement:
    lhs_expr: str
    lhs_variable: str
    rhs_variables: Set[str]
    distribution_type: str
    distribution_return_type: Type
    distribution_args: Tuple[str]
    lower: float
    upper: float
    init_state: bool

    def __init__(self, lhs_expr, distribution_type, *distribution_args, lower=float("-inf"), upper=float("inf"), init_state=False):
        self.lhs_expr = lhs_expr
        lhs_variables = [node.id for node in ast.walk(ast.parse(lhs_expr)) if isinstance(node, ast.Name)]
        assert len(lhs_variables) == 1, "The LHS expression for prior specification must contain just 1 parameter name"
        self.lhs_variable = lhs_variables[0]
        self.distribution_type = distribution_type
        self.distribution_args = tuple(str(x) for x in distribution_args)
        self.rhs_variables = set()
        self.rhs_variables.update([node.id for arg in self.distribution_args for node in ast.walk(ast.parse(str(arg))) if isinstance(node, ast.Name)])
        self.lower = lower
        self.upper = upper
        self.init_state = init_state
        self.assignment_dist = "assignment"

    def __post_init__(self):
        if self.distribution_type in ("bernoulli", "binomial", "beta_binomial", "neg_binomial", "poisson"):
            self.distribution_return_type = int
        else:
            # TODO: Check if it's a valid stan distribution
            self.distribution_return_type = float


@dataclass
class StanDataEntry:
    data_name: str
    stan_type: str

@dataclass
class StanModelContext:
    initial_time: float
    integration_times: Iterable[float]
    stan_data: Dict[str, StanDataEntry] = field(default_factory=dict)
    sample_statements: List[SamplingStatement] = field(default_factory=list)
    exposed_parameters: Set[str] = field(default_factory=set)  # stan variables to be passed to the ODE function
    all_stan_variables: Set[str] = field(default_factory=set)  # set of all stan variables

    def identify_stan_data_types(self, numeric_assump_dict):
        def get_dims(obj):
            if isinstance(obj, numpy.ndarray):
                return obj.shape
            try:
                iter(obj)
            except:
                return None
            else:
                dim = len(obj)
                if dim == 1:
                    return None
                inner_dim = get_dims(obj[0])
                if inner_dim:
                    return [dim] + inner_dim
                else:
                    return [dim]

        for key, val in numeric_assump_dict.items():
            if isinstance(val, int):
                self.stan_data[key] = StanDataEntry(key, "int")
            elif isinstance(val, float):
                self.stan_data[key] = StanDataEntry(key, "real")
            else:
                # Multidimensional data
                dims = get_dims(val)
                if not dims:
                    raise Exception(f"Can't process data entry {key}.")
                elif len(dims) == 1:
                    self.stan_data[key] = StanDataEntry(key, f"vector[{dims[0]}]")
                elif len(dims) == 2:
                    self.stan_data[key] = StanDataEntry(key, f"array[{dims[0]}] vector[{dims[1]}]")


class VensimModelContext:
    def __init__(self, abstract_model):
        self.variable_names = set()  # stanified
        self.stock_variable_names = set()
        self.abstract_model = abstract_model

        # Some basic checks to make sure the AM is compatible
        assert len(abstract_model.sections) == 1, "Number of sections in AbstractModel must be 1."

        for element in abstract_model.sections[0].elements:
            assert len(element.components) == 1, f"Number of components in AbstractElement must be 1, but {element.name} has {len(element.components)}"
            self.variable_names.add(vensim_name_to_identifier(element.name))

        for element in abstract_model.sections[0].elements:
            for component in element.components:
                if isinstance(component.ast, IntegStructure):
                    self.stock_variable_names.add(vensim_name_to_identifier(element.name))
                    break
        print("abstract_model", abstract_model)

    def print_variable_info(self, abstract_model):
        var_names = []
        max_length = len("original name") + 1
        for element in abstract_model.sections[0].elements:
            is_stock = False
            for component in element.components:
                if isinstance(component.ast, IntegStructure):
                    is_stock = True
                    break

            var_names.append((element.name, vensim_name_to_identifier(element.name), is_stock,))
            max_length = max(max_length, len(element.name) + 1)

        header = ("original name".ljust(max_length) + "stan variable name".ljust(max_length) + "is stock")
        print(header)
        print("-" * len(header))
        for x in var_names:
            print(x[0].ljust(max_length) + x[1].ljust(max_length) + ("V" if x[2] else ""))


class StanVensimModel:
    def __init__(self, abstract_model, setting_dict = {}, numeric_assump_dict ={}, ):
        self.abstract_model = abstract_model
        self.numeric_assump_dict = {vensim_name_to_identifier(name): value for name, value in numeric_assump_dict.items()}
        self.vensim_model_context = VensimModelContext(self.abstract_model)
        self.model_name = setting_dict['model_name']
        self.initial_time = float(setting_dict['initial_time'])
        self.integration_times = setting_dict['integration_times'] #Iterable
        self.stan_model_context = StanModelContext(setting_dict['initial_time'], setting_dict['integration_times'])
        self.stan_model_context.identify_stan_data_types(numeric_assump_dict)
        if setting_dict['initial_time'] in setting_dict['integration_times']:
            raise Exception("initial_time shouldn't be present in integration_times")

        self.stan_model_dir = os.path.join(os.getcwd(), "stan_files")
        if not os.path.exists(self.stan_model_dir):
            os.mkdir(self.stan_model_dir)

        self.init_variable_regex = re.compile(".+?(?=__init$)")
        # This regex is to match all preceding characters that come before '__init' at the end of the string.
        # So something like stock_var_init__init would match into stock_var__init.
        # This is used to parse out the corresponding stock names for init parameters.
        print("=======")
        print(self.numeric_assump_dict)
        for key in setting_dict['target_simulated_vector']:
            self.numeric_assump_dict[f"{key}_obs"] = self.integration_times
        print("=======")
        print(self.numeric_assump_dict)
        print("=======")
    def print_info(self):
        print("- Vensim model information:")
        self.vensim_model_context.print_variable_info(self.abstract_model)
        print("*" * 10)
        print("- Stan model information:")

    def set_prior(self, variable_name: str, distribution_type: str, *args, lower=float("-inf"), upper=float("inf"), init_state=False):
        if init_state:
            # This means the initial value of the ODE state variable.
            if variable_name not in self.vensim_model_context.stock_variable_names:
                raise Exception("init_state may be set to True only for stock variables.")
            self.stan_model_context.sample_statements.append(SamplingStatement(f"{variable_name}_init", distribution_type, *args, lower=lower, upper=upper, init_state=init_state))
            self.stan_model_context.all_stan_variables.add(f"{variable_name}_init")
        else:
            variable_name = vensim_name_to_identifier(variable_name)
            self.stan_model_context.all_stan_variables.add(variable_name)
            for arg in args:
                if isinstance(arg, str):
                    # If the distribution argument is an expression, parse the dependant variables
                    # We're using the python parser here, which might be problematic
                    used_variable_names = [vensim_name_to_identifier(node.id.strip()) for node in ast.walk(ast.parse(arg)) if isinstance(node, ast.Name)]
                    for name in used_variable_names:
                        if vensim_name_to_identifier(name) not in set(self.vensim_model_context.variable_names).union(set(self.stan_model_context.all_stan_variables)):
                            sample_string = f"{variable_name} ~ {distribution_type}({', '.join(args)})"
                            raise Exception(f"{sample_string} : '{name}' doesn't exist in the Vensim model or the Stan model!")
                        if name in self.vensim_model_context.variable_names and name not in self.vensim_model_context.stock_variable_names:
                            self.stan_model_context.exposed_parameters.update(used_variable_names)

            if variable_name in self.vensim_model_context.variable_names and variable_name not in self.vensim_model_context.stock_variable_names:
                self.stan_model_context.exposed_parameters.add(variable_name)
            self.stan_model_context.sample_statements.append(SamplingStatement(variable_name, distribution_type, *args, lower=lower, upper=upper, init_state=init_state))


    def set_setting(self, variable_name: str, distribution_type: str, *args, lower=float("-inf"), upper=float("inf"), init_state=False):
        if init_state:
            # This means the initial value of the ODE state variable.
            if variable_name not in self.vensim_model_context.stock_variable_names:
                raise Exception("init_state may be set to True only for stock variables.")
            self.stan_model_context.sample_statements.append(SamplingStatement(f"{variable_name}_init", distribution_type, *args, lower=lower, upper=upper, init_state=init_state))
            self.stan_model_context.all_stan_variables.add(f"{variable_name}_init")
        else:
            variable_name = vensim_name_to_identifier(variable_name)
            self.stan_model_context.all_stan_variables.add(variable_name)
            for arg in args:
                if isinstance(arg, str):
                    # If the distribution argument is an expression, parse the dependant variables
                    # We're using the python parser here, which might be problematic
                    used_variable_names = [vensim_name_to_identifier(node.id.strip()) for node in ast.walk(ast.parse(arg)) if isinstance(node, ast.Name)]
                    for name in used_variable_names:
                        if vensim_name_to_identifier(name) not in set(self.vensim_model_context.variable_names).union(set(self.stan_model_context.all_stan_variables)):
                            sample_string = f"{variable_name} ~ {distribution_type}({', '.join(args)})"
                            raise Exception(f"{sample_string} : '{name}' doesn't exist in the Vensim model or the Stan model!")
                        if name in self.vensim_model_context.variable_names and name not in self.vensim_model_context.stock_variable_names:
                            self.stan_model_context.exposed_parameters.update(used_variable_names)

            if variable_name in self.vensim_model_context.variable_names and variable_name not in self.vensim_model_context.stock_variable_names:
                self.stan_model_context.exposed_parameters.add(variable_name)
            self.stan_model_context.sample_statements.append(SamplingStatement(variable_name, distribution_type, *args, lower=lower, upper=upper, init_state=init_state))

    def build_stan_functions(self):
        """
        We build the stan file that holds the ODE function. From the sample statements that the user have provided,
        we identify which variables within the ODE model should be treated as stan parameters instead if variables within
        the function block. This means that instead of the variable being defined locally within the function body,
        it instead gets defined within the transformed parameters/model block.
        Returns
        -------

        """
        self.function_builder = StanFunctionBuilder(self.abstract_model, self.numeric_assump_dict)
        function_code = self.function_builder.build_functions(self.stan_model_context.exposed_parameters, self.vensim_model_context.stock_variable_names)
        if glob.glob(os.path.join(self.stan_model_dir, f"{self.model_name}_functions.stan")):
            with open(os.path.join(self.stan_model_dir, f"{self.model_name}_functions.stan"), "r") as f:
                if f.read().rstrip() != function_code.rstrip():
                    return
            if input(f"{self.model_name}_functions.stan already exists in the current working directory. Overwrite? (Y/N):").lower() != "y":
                raise Exception("Code generation aborted by user")

        with open(os.path.join(self.stan_model_dir, f"{self.model_name}_functions.stan"), "w") as f:
            f.write(function_code)

    def stanify_data2draws(self):
        stan_model_path = os.path.join(self.stan_model_dir, f"{self.model_name}_data2draws.stan")
        with open(stan_model_path, "w") as f:
            # Include the function
            f.write("functions{\n")
            f.write(f"    #include {self.model_name}_functions.stan\n")
            f.write("}\n\n")

            f.write(StanDataBuilder(self.stan_model_context).build_block())
            f.write("\n")

            f.write(StanTransformedDataBuilder(self.stan_model_context).build_block())
            f.write("\n")

            f.write(StanParametersBuilder(self.stan_model_context, self.vensim_model_context).build_block())
            f.write("\n")

            transformed_params_builder = StanTransformedParametersBuilder(self.stan_model_context, self.vensim_model_context)
            # Find sampling statements for init
            stock_initials = {}
            for statement in self.stan_model_context.sample_statements:
                if statement.init_state:
                    stock_initials[statement.lhs_variable] = statement.lhs_variable + "__init"

            f.write(transformed_params_builder.build_block(self.stan_model_context.exposed_parameters,
                                                           self.vensim_model_context.stock_variable_names,
                                                           self.function_builder.get_generated_lookups_dict(),
                                                           self.function_builder.get_generated_datastructures_set(),
                                                           self.function_builder.ode_function_name,
                                                           stock_initials))
            f.write("\n")

            f.write(StanModelBuilder(self.stan_model_context).build_block())
            f.write("\n")

        stan_model = cmdstanpy.CmdStanModel(stan_file=stan_model_path)
        return stan_model

    def stanify_draws2data(self):
        stan_model_path = os.path.join(self.stan_model_dir, f"{self.model_name}_draws2data.stan")
        with open(stan_model_path, "w") as f:
            # Include the function
            f.write("functions{")
            f.write("\n")
            f.write(f"#include {self.model_name}_functions.stan\n")
            f.write("}")
            f.write("\n")

            f.write(Draws2DataStanDataBuilder(self.stan_model_context, self.vensim_model_context).build_block())
            f.write("\n")
            f.write(StanTransformedDataBuilder(self.stan_model_context).build_block())
            f.write("\n")

            stock_initials = {}
            for statement in self.stan_model_context.sample_statements:
                if statement.init_state:
                    stock_variable_name = statement.lhs_variable
                    stock_initials[stock_variable_name] = stock_variable_name

                #f.write(f"real {stock_initials[stock_variable_name]} = {statement.distribution_type}_rng({', '.join([str(arg) for arg in statement.distribution_args])});\n")

            transformed_params_builder = StanTransformedParametersBuilder(self.stan_model_context, self.vensim_model_context)
            transformed_params_builder.code = IndentedString(indent_level=1)
            transformed_params_builder.write_block(self.stan_model_context.exposed_parameters,
                                                       self.vensim_model_context.stock_variable_names,
                                                       self.function_builder.get_generated_lookups_dict(),
                                                       self.function_builder.get_generated_datastructures_set(),
                                                       self.function_builder.ode_function_name,
                                                       stock_initials)
            f.write("\n")

            f.write(Draws2DataStanGQBuilder(self.stan_model_context, self.vensim_model_context,
                                            self.function_builder.ode_function_name).build_block(transformed_parameters_code=str(transformed_params_builder.code)))

        stan_model = cmdstanpy.CmdStanModel(stan_file=stan_model_path)

        return stan_model



