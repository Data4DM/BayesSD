import os
import itertools
from pathlib import Path
from typing import Union, List, Dict, Set, Sequence, Iterable
from numbers import Number
from .ast_walker import *
from .utilities import *
from pysd.translators.structures.abstract_model import (
    AbstractComponent,
    AbstractElement,
    AbstractModel,
    AbstractSection,
)
from typing import TYPE_CHECKING
if TYPE_CHECKING:
    from .stan_model import StanModelContext, VensimModelContext


class StanTransformedParametersBuilder:
    def __init__(self, stan_model_context, vensim_model_context):
        self.stan_model_context = stan_model_context
        self.vensim_model_context = vensim_model_context
        self.abstract_model = self.vensim_model_context.abstract_model

    def build_block(
        self,
        predictor_variable_names,
        outcome_variable_names,
        lookup_function_dict,
        datastructure_fucntion_set,
        function_name,
        stock_initial_values: Dict[str, str]
    ):
        self.code = IndentedString()
        self.code += "transformed parameters {\n"
        self.code.indent_level += 1
        self.write_block(predictor_variable_names, outcome_variable_names, lookup_function_dict, datastructure_fucntion_set, function_name, stock_initial_values)
        self.code.indent_level -= 1
        self.code += "}\n"

        return str(self.code)


    def write_block(self, predictor_variable_names, outcome_variable_names, lookup_function_dict, datastructure_fucntion_set, function_name, stock_initial_values: Dict[str, str]):
        argument_variables = []
        for var in predictor_variable_names:
            if isinstance(var, str):
                argument_variables.append(var)
            elif isinstance(var, tuple):
                var_name = var[1]
                argument_variables.append(var_name)

        variable_ast_dict: Dict[str, AbstractSyntax] = {}
        for element in self.abstract_model.sections[0].elements:
            stan_varname = vensim_name_to_identifier(element.name) #            if stan_varname not in datastructure_fucntion_set:
            variable_ast_dict[stan_varname] = element.components[0].ast

        # Create variables defined through assignment
        for statement in self.stan_model_context.sample_statements:
            if statement.distribution_type == statement.assignment_dist:
                if statement.lhs_expr not in datastructure_fucntion_set:
                    self. code += f"real {statement.lhs_expr} = {''.join(statement.distribution_args)};\n"


        # Find variables which are required for evaluating the initial values
        required_variables_for_init = set()
        for outcome_variable_name in outcome_variable_names:
            required_variables_for_init |= self.vensim_model_context.variable_dependency_graph[outcome_variable_name]

        # Create the assignment code for those variables
        self.code += "// Constant variables for initial values\n"
        required_variables_for_init_sorted = StatementTopoSort(ignored_variables_for_search=self.vensim_model_context.variable_names - required_variables_for_init, dependency_graph=self.vensim_model_context.variable_dependency_graph).sort()#.sort(ignored_variables_for_sort=self.vensim_model_context.variable_names - required_variables_for_init)
        for variable_name in required_variables_for_init_sorted:
            if variable_name in predictor_variable_names:
                # If we already defined a stan parameter for a given variable, skip it
                continue
            self.code += f"real {variable_name} = {InitialValueCodegenWalker(lookup_function_dict, datastructure_fucntion_set, variable_ast_dict).walk(variable_ast_dict[variable_name])};\n"

        self.code += "\n"

        self.code += "// Initial ODE values\n"
        for outcome_variable_name in outcome_variable_names:
            if outcome_variable_name in stock_initial_values:
                continue
            for element in self.abstract_model.sections[0].elements:
                if vensim_name_to_identifier(element.name) == outcome_variable_name:
                    component = element.components[0]
                    assert isinstance(component.ast, IntegStructure), "Output variable component must be an INTEG."
                    self.code += f"real {outcome_variable_name}__init = {InitialValueCodegenWalker(lookup_function_dict, datastructure_fucntion_set, variable_ast_dict).walk(component.ast)};\n"
                    break

        self.code += "\n"
        self.code += f"vector[{len(outcome_variable_names)}] initial_outcome;  // Initial ODE state vector\n"
        for index, name in enumerate(outcome_variable_names, 1):

            if name in stock_initial_values:
                self.code += f"initial_outcome[{index}] = {stock_initial_values[name]};  // Defined within stan\n"
            else:
                self.code += f"initial_outcome[{index}] = {name}__init;\n"

        self.code += "\n"

        ode_solver_code = f"vector[{len(outcome_variable_names)}] integrated_result[n_t] = ode_rk45({function_name}, initial_outcome, initial_time, times"
        if len(argument_variables) > 0:
            ode_solver_code += ", " + f"{', '.join(argument_variables)}"

        self.code += ode_solver_code + ");\n"

        for index, name in enumerate(outcome_variable_names, 1):
            self.code += f"array[n_t] real {name} = integrated_result[:, {index}];\n"


class StanParametersBuilder:
    def __init__(self, stan_model_context: "StanModelContext", vensim_model_context: "VensimModelContext"):
        self.stan_model_context = stan_model_context
        self.vensim_model_context = vensim_model_context

    def build_block(self):
        data_variable_names = tuple(self.stan_model_context.stan_data.keys())
        code = IndentedString()
        code += "parameters{\n"
        code.indent_level += 1  # Enter parameters block

        added_parameters = set()

        for statement in self.stan_model_context.sample_statements:
            if statement.lhs_variable in data_variable_names:
                continue
            if statement.lhs_variable in added_parameters:
                continue
            if statement.distribution_type == statement.assignment_dist:
                continue
            if statement.lower > float("-inf") and statement.upper < float("inf"):
                code += f"real<lower={statement.lower}, upper={statement.upper}> {statement.lhs_variable};\n"
            elif statement.lower > float("-inf"):
                code += f"real<lower={statement.lower}> {statement.lhs_variable};\n"
            elif statement.upper < float("inf"):
                code += f"real<upper={statement.upper}> {statement.lhs_variable};\n"
            else:
                code += f"real {statement.lhs_variable};\n"

            added_parameters.add(statement.lhs_variable)

        code.indent_level -= 1  # Exit parameters block
        code += "}\n"
        return code.string


class StanDataBuilder:
    def __init__(self, stan_model_context: "StanModelContext"):
        self.stan_model_context = stan_model_context

    def build_block(self):
        code = IndentedString()
        code += "data{\n"
        code.indent_level += 1

        for _, entry in self.stan_model_context.stan_data.items():
            code += f"{entry.stan_type} {entry.data_name};\n"

        code.indent_level -= 1
        code += "}\n"
        return code.string


class StanTransformedDataBuilder:
    def __init__(self, stan_model_context: "StanModelContext"):
        self.stan_model_context = stan_model_context

    def build_block(self) -> str:
        n_t = len(self.stan_model_context.integration_times)
        code = IndentedString()
        code += "transformed data{\n"
        code.indent_level += 1
        code += f"real initial_time = {self.stan_model_context.initial_time};\n"
        code += f"array[n_t] real times = {{{', '.join([str(x) for x in self.stan_model_context.integration_times])}}};\n"

        code.indent_level -= 1
        code += "}\n"
        return code.string


class StanModelBuilder:
    def __init__(self, stan_model_context: "StanModelContext"):
        self.stan_model_context = stan_model_context

    def build_block(self):
        code = IndentedString()
        code += "model{\n"
        code.indent_level += 1
        for statement in self.stan_model_context.sample_statements:
            if statement.distribution_type != statement.assignment_dist:
                code += f"{statement.lhs_expr} ~ {statement.distribution_type}({', '.join([str(arg) for arg in statement.distribution_args])});\n"

        code.indent_level -= 1
        code += "}\n"
        return str(code)


class StanGeneratedQuantitiesBuilder:
    def __init__(self, sampling_statements: Iterable["SamplingStatement"]):
        self.sampling_statements = sampling_statements

    def build_block(self):
        code = IndentedString()
        code += "generated quantities{\n"
        code.indent_level += 1
        for statement in self.sampling_statements:
            code += f"real {statement.lhs_expr} ~ {statement.distribution_type}({', '.join([str(arg) for arg in statement.distribution_args])});\n"

        code.indent_level -= 1
        code += "}\n"
        return str(code)


class Draws2DataStanGQBuilder:
    def __init__(self, stan_model_context: "StanModelContext", vensim_model_context: "VensimModelContext", function_name: str):
        self.stan_model_context = stan_model_context
        self.vensim_model_context = vensim_model_context
        self.function_name = function_name


    def build_block(self, transformed_parameters_code: str = ""):
        self.code = IndentedString()
        self.code += "generated quantities{\n"
        self.code.indent_level += 1  # enter code block
        self.build_rng_functions()
        self.code += "\n"
        self.code.add_raw(transformed_parameters_code, ignore_indent=True)
        self.code += "\n"
        self.build_data_rng_functions()
        self.code.indent_level -= 1  # exit block
        self.code += "}\n"

        return str(self.code)

    def build_data_rng_functions(self):
        for statement in self.stan_model_context.sample_statements:
            if statement.lhs_variable in self.stan_model_context.stan_data:
                param_name = statement.lhs_expr
                stan_type = self.stan_model_context.stan_data[param_name].stan_type
                if stan_type.startswith("vector"):
                    self.code += f"{stan_type} {param_name} = to_vector({statement.distribution_type}_rng({', '.join(statement.distribution_args)}));\n"
                else:
                    self.code += f"{stan_type} {param_name} = {statement.distribution_type}_rng({', '.join(statement.distribution_args)});\n"



    def build_rng_functions(self):
        ignored_variables = set(self.stan_model_context.stan_data.keys()).union(set(self.vensim_model_context.stock_variable_names))
        stmt_sorter = StatementTopoSort(ignored_variables)
        for sample_statements in self.stan_model_context.sample_statements:
            stmt_sorter.add_stmt(sample_statements.lhs_variable, sample_statements.rhs_variables)

        param_draw_order = stmt_sorter.sort()
        statements = self.stan_model_context.sample_statements.copy()

        processed_statements = set()
        for param_name in param_draw_order:
            if param_name in ignored_variables:
                continue
            for statement in statements:
                if statement in processed_statements:
                    continue
                if param_name == statement.lhs_variable:
                    if statement.init_state:
                        param_name = param_name + "__init"

                    self.code += f"real {param_name} = {statement.distribution_type}_rng({', '.join(statement.distribution_args)});\n"

                    processed_statements.add(statement)


class Draws2DataStanDataBuilder(StanDataBuilder):
    def __init__(self, stan_model_context, vensim_model_context):
        self.stan_model_context = stan_model_context
        self.vensim_model_context = vensim_model_context
        super(Draws2DataStanDataBuilder, self).__init__(self.stan_model_context)

    def build_block(self):
        stan_params = [stmt.lhs_variable for stmt in self.stan_model_context.sample_statements]
        code = IndentedString()
        code += "data{\n"
        code.indent_level += 1

        for _, entry in self.stan_model_context.stan_data.items():
            if entry.data_name in stan_params:
                continue
            code += f"{entry.stan_type} {entry.data_name};\n"

        code.indent_level -= 1
        code += "}\n"
        return code.string


class StanFunctionBuilder:
    def __init__(
        self, vensim_model_context: 'VensimModelContext', data_dict: Dict[str, Any], function_name: str = "vensim_ode_func"
    ):

        self.vensim_model_context = vensim_model_context
        self.abstract_model = vensim_model_context.abstract_model
        self.elements = self.abstract_model.sections[0].elements
        self.ode_function_name = function_name
        self.lookup_builder_walker = LookupCodegenWalker()
        self.datastructure_builder_walker = DataStructureCodegenWalker(data_dict)
        self.code = IndentedString()

    def get_generated_lookups_dict(self):
        return self.lookup_builder_walker.generated_lookup_function_names

    def get_generated_datastructures_set(self):
        return self.datastructure_builder_walker.data_variable_names

    def build_functions(
        self,
        predictor_variable_names: Set[str],
        outcome_variable_names: Iterable[str],
        function_name: str = "vensim_ode_func",
    ):
        self.code = IndentedString()

        # Build the lookup functions
        self.build_lookups()
        lookup_functions_code = str(self.lookup_builder_walker.code).rstrip()
        if lookup_functions_code:
            self.code += lookup_functions_code
            self.code += "\n\n"

        self.code += "// Begin ODE declaration\n"

        # Build the data structure functions
        self.build_datastructures()
        datastructure_functions_code = str(self.datastructure_builder_walker.code).rstrip()
        if datastructure_functions_code:
            self.code += datastructure_functions_code
            self.code += "\n\n"

        # Identify the minimum number of variables needed for calculating outcomes
        required_variables = set()
        bfs_stack = []
        bfs_stack.extend(outcome_variable_names)
        while len(bfs_stack) > 0:
            variable = bfs_stack.pop(0)
            required_variables.add(variable)
            for next_var in self.vensim_model_context.variable_dependency_graph[variable]:
                if next_var in required_variables:
                    continue
                bfs_stack.append(next_var)
            required_variables |= self.vensim_model_context.variable_dependency_graph[variable]

        sorter = StatementTopoSort(outcome_variable_names,
                                   self.vensim_model_context.variable_dependency_graph)

        sorted_element_names: List[str] = sorter.sort(ignored_variables_for_sort=self.vensim_model_context.variable_names - required_variables)

        class Element:
            name: str
        self.elements = [element for element in self.elements if vensim_name_to_identifier(element.name) in sorted_element_names]
        self.elements = sorted(self.elements, key=lambda x: sorted_element_names.index(vensim_name_to_identifier(x.name)))

        #################
        # Create function declaration
        self.code += f"vector {function_name}(real time, vector outcome"
        argument_strings = []
        argument_variables = (
            []
        )  # this list holds the names of the argument variables
        if(len(predictor_variable_names) > 0):
            self.code += ", "
        for var in predictor_variable_names:
            if isinstance(var, str):
                argument_variables.append(var)
                argument_strings.append("real " + var)
            elif isinstance(var, tuple):
                var_type, var_name = var
                argument_variables.append(var_name)
                argument_strings.append(f"{var_type} {var_name}")

        self.code += ", ".join(argument_strings)
        self.code += "){"
        self.code += "\n"
        #############
        self.code.indent_level += 1
        # Enter function body

        self.code += f"vector[{len(outcome_variable_names)}] dydt;  // Return vector of the ODE function\n"
        self.code += "\n"

        self.code += "// State variables\n"
        for index, outcome_variable_name in enumerate(
            outcome_variable_names, 1
        ):
            self.code += f"real {outcome_variable_name} = outcome[{index}];\n"

        self.code += "\n"

        codegen_walker = BlockCodegenWalker(
            self.lookup_builder_walker.generated_lookup_function_names, self.datastructure_builder_walker.data_variable_names
        )
        for element in self.elements:
            stan_varname = vensim_name_to_identifier(element.name)
            if stan_varname in argument_variables:
                continue
            elif stan_varname in outcome_variable_names:
                stan_varname += "_dydt"
            elif stan_varname not in required_variables:
                continue
            elif stan_varname in codegen_walker.datastructure_function_names:
                continue
            for component in element.components:
                self.code += f"real {stan_varname} = {codegen_walker.walk(component.ast)};\n"

        self.code += "\n"

        # Generate code for returning outcomes of interest
        outcome_variable_names = [
            name + "_dydt" for name in outcome_variable_names
        ]
        for index, outcome_variable_name in enumerate(
            outcome_variable_names, 1
        ):
            self.code += f"dydt[{index}] = {outcome_variable_name};\n"

        self.code += "\n"
        self.code += "return dydt;\n"

        self.code.indent_level -= 1
        # Exit function body
        self.code += "}\n"

        return str(self.code)

    def build_lookups(self):
        for element in self.elements:
            for component in element.components:
                self.lookup_builder_walker.walk(component.ast, vensim_name_to_identifier(element.name))

    def build_datastructures(self):
        for element in self.elements:
            for component in element.components:
                self.datastructure_builder_walker.walk(component.ast, vensim_name_to_identifier(element.name))
