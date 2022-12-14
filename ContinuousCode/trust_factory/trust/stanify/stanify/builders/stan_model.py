from typing import Type
import ast, glob, re
import numpy as np

from .stan_block_builder import *
from .utilities import vensim_name_to_identifier
from pysd.translators.structures.abstract_expressions import *
import cmdstanpy
from stanify.builders.utilities import get_stanfiles_path

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

# dataclass remove boilerplate
@dataclass
class StanDataEntry:
    data_name: str
    stan_type: str

@dataclass
class StanModelContext:
    initial_time: float
    integration_times: Iterable[float]
    stan_data: Dict[str, StanDataEntry] = field(default_factory=dict) # dictionary is obj, lambda function (not obj butc lass)
    sample_statements: List[SamplingStatement] = field(default_factory=list)
    exposed_parameters: Set[str] = field(default_factory=set)  # stan variables to be passed to the ODE function (include both hier, nonhier)
    all_stan_variables: Set[str] = field(default_factory=set)  # set of all stan variables
    target_integ_outcome_vector_names : Set[str] = field(default_factory=set)
    obs_integ_outcome_vector_names: Set[str] = field(default_factory=set) # vector connecting draws2data, data2draws


    def identify_stan_data_types(self, numeric):
        def get_dims(obj):
            if isinstance(obj, np.ndarray):
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

        for key, val in numeric.items():
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
                    # TODO @Dashadower dims[0] VS using Q, R
                    self.stan_data[key] = StanDataEntry(key, f"vector[{dims[0]}]")
                elif len(dims) == 2:
                    self.stan_data[key] = StanDataEntry(key, f"array[{dims[0]}] vector[{dims[1]}]")



@dataclass
class PrecisionContext:
    S: int
    M: int
    N: int
    Q: int
    R: int
class VensimModelContext:
    def  __init__(self, abstract_model):
        self.variable_names = set()  # stanified
        self.integ_outcome_vector_names = set()
        self.abstract_model = abstract_model

        # Some basic checks to make sure the AM is compatible
        assert len(abstract_model.sections) == 1, "Number of sections in AbstractModel must be 1."

        for element in abstract_model.sections[0].elements:
            assert len(element.components) == 1, f"Number of components in AbstractElement must be 1, but {element.name} has {len(element.components)}"
            self.variable_names.add(vensim_name_to_identifier(element.name))


        for element in abstract_model.sections[0].elements:
            for component in element.components:
                if isinstance(component.ast, IntegStructure):
                    self.integ_outcome_vector_names.add(vensim_name_to_identifier(element.name))
                    break
        self.integ_outcome_vector_names = sorted(self.integ_outcome_vector_names)

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


class vensim2stan:
    def __init__(self, abstract_model):
        self.abstract_model = abstract_model
        self.vensim_model_context = VensimModelContext(self.abstract_model)
        self.init_variable_regex = re.compile(".+?(?=__init$)")
        # This regex is to match all preceding characters that come before '__init' at the end of the string.
        # So something like stock_var_init__init would match into stock_var__init.
        # This is used to parse out the corresponding stock names for init parameters.


    def print_info(self):
        print("- Vensim model information:")
        self.vensim_model_context.print_variable_info(self.abstract_model)
        print("*" * 10)
        print("- Stan model information:")

    #TODO @Dash how to set prior value summary as filename?
    def set_prior(self, variable_name: str, distribution_type: str, *args, lower=float("-inf"), upper=float("inf"), init_state=False):
        if init_state:
            # This means the initial value of the ODE state variable.
            if variable_name not in self.vensim_model_context.integ_outcome_vector_names:
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
                        if name in self.vensim_model_context.variable_names and name not in self.vensim_model_context.integ_outcome_vector_names:
                            self.stan_model_context.exposed_parameters.update(used_variable_names)

            if variable_name in self.vensim_model_context.variable_names and variable_name not in self.vensim_model_context.integ_outcome_vector_names:
                self.stan_model_context.exposed_parameters.add(variable_name)
            self.stan_model_context.sample_statements.append(SamplingStatement(variable_name, distribution_type, *args, lower=lower, upper=upper, init_state=init_state))


    def set_type(self, est_param_names: list, hier_est_param_names: list, target_simulated_vector_names: list, driving_vector_names: list, model_name: str):
        self.est_param_names = est_param_names
        self.hier_est_param_names = hier_est_param_names
        # TODO @Dashadower how to make target_simulated_vector_names and integ_outcome_vector_names consistent? make class TypeContext? related to lin
        self.stan_model_context.target_integ_outcome_vector_names = target_simulated_vector_names
        self.stan_model_context.obs_integ_outcome_vector_names = [f'{name}_obs' for name in self.stan_model_context.target_integ_outcome_vector_names]
        self.driving_vector_names = driving_vector_names
        self.model_name = model_name

    #TODO @dashadower for external refernce of target_simulated_vector_names
    # is it better to use model.target_simulated_vector_names or define function for consistency?
    def get_latent_vector_names(self):
        return [f'{target}' for target in self.stan_model_context.target_integ_outcome_vector_names]

    def get_obs_vector_names(self):
        return [f'{target}_obs' for target in self.stan_model_context.target_integ_outcome_vector_names]

    #TODO @dashadower; is right faster than the left (for consistency left is better)
    # below vs self.stan_model_context.target_integ_outcome_vector_names + return [f'{target}_obs' for target in self.stan_model_context.target_integ_outcome_vector_names]
    def get_latent_obs_vector_names(self):
        return self.get_latent_vector_names() + self.get_obs_vector_names()


    def update_setting(self, est_param_names: list, target_simulated_vector_names: list, driving_vector_names: list, model_name: str):
        self.est_param_names = est_param_names
        self.stan_model_context.target_integ_outcome_vector_names = target_simulated_vector_names
        self.driving_vector_names = driving_vector_names
        self.model_name = model_name
        # if self.initial_time in self.integration_times:
        #     raise Exception("initial_time shouldn't be present in integration_times")


    def set_numeric(self, precision: list, numeric: list,):
        """
        Parameters
        ----------
        precision: settings affecting precision SMNPQ (assumed_scalar)
        numeric: driving data
        -------

        """
        # clamp context
        self.precision_context = PrecisionContext(precision['S'], precision['M'], precision['N'],precision['Q'],precision['R'])
        self.stan_model_context = StanModelContext(0.0, precision['integration_times'])

        # clamp driving data
        self.numeric = {vensim_name_to_identifier(name): value for name, value in numeric.items()}

        self.stan_model_context.identify_stan_data_types(self.numeric)
        self.stan_model_context.exposed_parameters.update(["time_step"])
        if 'process_noise_scale' in numeric.keys():
            self.stan_model_context.exposed_parameters.update(["process_noise_scale"])




    def update_numeric(self, updated_numeric: list):
        """

        Parameters
        ----------
        numeric
        usage: model.update_numeric({'prey_obs': prior_pred_obs['prey_obs'], 'predator_obs': prior_pred_obs['predator_obs'],'process_noise_scale': 0.0 })
        Returns
        -------

        """
        updated_data = {vensim_name_to_identifier(name): value for name, value in updated_numeric.items()}
        self.numeric.update(updated_data)
        self.stan_model_context.identify_stan_data_types(updated_data)


    def stanify_ode_function(self):
        """
        We build the stan file that holds the ODE function. From the sample statements that the user have provided,
        we identify which variables within the ODE model should be treated as stan parameters instead if variables within
        the function block. This means that instead of the variable being defined locally within the function body,
        it instead gets defined within the transformed parameters/model block.
        Returns
        -------

        """
        stan_function_path = f"{get_stanfiles_path(self.model_name)}/functions.stan"
        self.function_builder = StanFunctionBuilder(self.abstract_model, self.numeric)
        function_code = self.function_builder.build_functions(self.stan_model_context.exposed_parameters, self.hier_est_param_names, self.vensim_model_context.integ_outcome_vector_names)


        # if glob.glob(stan_function_path):
        #     with open(stan_function_path, "r") as f:
        #         if f.read().rstrip() == function_code.rstrip():
        #             return
        #         else:
        #             if input(f"{self.model_name}_functions.stan already exists in the current working directory. Overwrite? (y/n):").lower() != "y":
        #                 raise Exception("Code generation aborted by user")
        # else:
        #     with open(stan_function_path, "w") as f:
        #         f.write(function_code)
        if os.path.exists(stan_function_path):
            os.remove(stan_function_path)
        with open(stan_function_path, "w") as f:
            f.write(function_code)
    def stanify_draws2data(self):
        stan_draws2data_path = f"{ get_stanfiles_path(self.model_name)}/draws2data.stan"

        # Find sampling statements for init
        stock_initials = {}
        for statement in self.stan_model_context.sample_statements:
            if statement.init_state:
                stock_initials[statement.lhs_variable] = statement.lhs_variable + "__init"

        with open(stan_draws2data_path, "w") as f:
            # Include the function
            f.write("functions{")
            f.write("\n")
            f.write(f"  #include functions.stan\n")
            f.write("}")
            f.write("\n")
            f.write("\n")
            f.write(Draws2DataStanDataBuilder(self.stan_model_context).build_block())
            f.write("\n")

            transformed_data_builder = StanTransformedDataBuilder(self.stan_model_context, self.vensim_model_context)
            f.write(transformed_data_builder.build_block(
                  self.vensim_model_context.integ_outcome_vector_names,
                  self.function_builder.get_generated_lookups_dict(),
                  self.function_builder.get_generated_driving_data_ftn_set(),
                  stock_initials)
            )

            stock_initials = {}
            for statement in self.stan_model_context.sample_statements:
                if statement.init_state:
                    stock_variable_name = statement.lhs_variable
                    stock_initials[stock_variable_name] = stock_variable_name

                #f.write(f"real {stock_initials[stock_variable_name]} = {statement.distribution_type}_rng({', '.join([str(arg) for arg in statement.distribution_args])});\n")

            transformed_params_builder = StanTransformedParametersBuilder(self.precision_context, self.stan_model_context, self.vensim_model_context)
            transformed_params_builder.code = IndentedString(indent_level=1)
            transformed_params_builder.write_block(self.stan_model_context.exposed_parameters,
                                                   self.hier_est_param_names,
                                                   self.vensim_model_context.integ_outcome_vector_names,
                                                   self.function_builder.ode_function_name,
                                                   )
            f.write("\n")

            draws2data_gq_builder = Draws2DataStanGQBuilder(self.precision_context, self.stan_model_context, self.vensim_model_context)
            draws2data_gq_builder.code = IndentedString(indent_level=1)
            f.write(draws2data_gq_builder.build_block(self.hier_est_param_names, transformed_parameters_code=str(transformed_params_builder.code)))

        stan_model = cmdstanpy.CmdStanModel(stan_file=stan_draws2data_path, cpp_options={'STAN_THREADS':'true'})
        return stan_model



    def stanify_data2draws(self):
        stan_data2draws_path = f"{get_stanfiles_path(self.model_name)}/data2draws.stan"

        # Find sampling statements for init
        stock_initials = {}
        for statement in self.stan_model_context.sample_statements:
            if statement.init_state:
                stock_initials[statement.lhs_variable] = statement.lhs_variable + "__init"

        with open(stan_data2draws_path, "w") as f:
            # Include the function
            f.write("functions{\n")
            f.write(f"    #include functions.stan\n")
            f.write("}\n\n")

            f.write(Data2DrawsStanDataBuilder(self.precision_context, self.stan_model_context).build_block())
            f.write("\n")

            transformed_data_builder = StanTransformedDataBuilder(self.stan_model_context, self.vensim_model_context)
            f.write(transformed_data_builder.build_block(
                  self.vensim_model_context.integ_outcome_vector_names,
                  self.function_builder.get_generated_lookups_dict(),
                  self.function_builder.get_generated_driving_data_ftn_set(),
                  stock_initials)
            )

            f.write("\n")

            f.write(StanParametersBuilder(self.precision_context, self.stan_model_context, self.vensim_model_context).build_block(self.hier_est_param_names))
            f.write("\n")

            transformed_params_builder = StanTransformedParametersBuilder(self.precision_context, self.stan_model_context, self.vensim_model_context)

            f.write(transformed_params_builder.build_block(self.stan_model_context.exposed_parameters,
                                                           self.hier_est_param_names,
                                                           self.vensim_model_context.integ_outcome_vector_names,
                                                           self.function_builder.ode_function_name,
                                                           ))
            f.write("\n")

            f.write(StanModelBuilder(self.precision_context, self.stan_model_context).build_block(self.hier_est_param_names))
            f.write("\n")

            f.write(Data2DrawsStanGQBuilder(self.precision_context,self.stan_model_context, self.vensim_model_context,).build_block())

        stan_model = cmdstanpy.CmdStanModel(stan_file=stan_data2draws_path, cpp_options={'STAN_THREADS':'true'})
        return stan_model