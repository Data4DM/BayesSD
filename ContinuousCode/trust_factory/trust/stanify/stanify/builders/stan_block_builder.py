import os
import itertools
from pathlib import Path
from typing import Union, List, Dict, Set, Sequence, Iterable
from numbers import Number
import numpy as np
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



class StanFunctionBuilder:
    def __init__(
        self, abstract_model: AbstractModel, data_dict: Dict[str, Any], function_name: str = "vensim_ode_func"
    ):

        self.abstract_model = abstract_model
        self.elements = self.abstract_model.sections[0].elements
        self.ode_function_name = function_name
        self.lookup_builder_walker = LookupCodegenWalker()
        self.datastructure_builder_walker = DataStructureCodegenWalker(data_dict)
        self.variable_dependency_graph: Dict[
            str, Set
        ] = (
            {}
        )  # in order to evaluate 'key' variable, we need 'element' variables
        self.code = IndentedString()

    def get_generated_lookups_dict(self):
        return self.lookup_builder_walker.generated_lookup_function_names

    def get_generated_driving_data_ftn_set(self):
        return self.datastructure_builder_walker.data_variable_names
    def _create_dependency_graph(self):
        self.variable_dependency_graph = {}
        walker = AuxNameWalker()
        for element in self.elements:
            for component in element.components:
                if element.name not in self.variable_dependency_graph:
                    self.variable_dependency_graph[
                        vensim_name_to_identifier(element.name)
                    ] = set()

                dependent_aux_names = walker.walk(component.ast)
                if dependent_aux_names:
                    self.variable_dependency_graph[
                        vensim_name_to_identifier(element.name)
                    ].update(dependent_aux_names)

        return self.variable_dependency_graph

    def build_functions(
        self,
        est_param_names: Set[str],
        hier_est_param_names: Set[str],
        integ_outcome_vector_names: Iterable[str],
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
        self._create_dependency_graph()

        # Build the data structure functions
        self.build_driving_data_ftn()
        datastructure_functions_code = str(self.datastructure_builder_walker.code).rstrip()
        if datastructure_functions_code:
            self.code += datastructure_functions_code
            self.code += "\n\n"

        # Identify the minimum number of variables needed for calculating outcomes
        required_variables = set()
        bfs_stack = []
        bfs_stack.extend(integ_outcome_vector_names)
        while len(bfs_stack) > 0:
            variable = bfs_stack.pop(0)
            required_variables.add(variable)
            for next_var in self.variable_dependency_graph[variable]:
                if next_var in required_variables:
                    continue
                bfs_stack.append(next_var)
            required_variables |= self.variable_dependency_graph[variable]

        eval_order = []

        def recursive_order_search(current, visited):
            visited.add(current)
            for child in self.variable_dependency_graph[current]:
                if child == current:
                    continue
                if child in integ_outcome_vector_names:
                    continue
                if child not in visited:
                    recursive_order_search(child, visited)
            eval_order.append(current)

        for var_name in required_variables:
            recursive_order_search(var_name, set())

        self.elements = [
            element
            for element in self.elements
            if vensim_name_to_identifier(element.name) in required_variables
        ]
        self.elements = sorted(
            self.elements,
            key=lambda x: eval_order.index(vensim_name_to_identifier(x.name)),
        )
        #################
        # Create function declaration
        self.code += f"vector {function_name}(real time, vector outcome"
        argument_strings = []
        argument_variables = (
            []
        )  # this list holds the names of the argument variables
        if(len(est_param_names) > 0):
            self.code += ", "
        for var in est_param_names:
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

        self.code += f"vector[{len(integ_outcome_vector_names)}] dydt;  // Return vector of the ODE function\n"
        self.code += "\n"

        self.code += "// State variables\n"
        for index, outcome_variable_name in enumerate(
            integ_outcome_vector_names, 1
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
            elif stan_varname in integ_outcome_vector_names:
                stan_varname += "_dydt"
            elif stan_varname not in required_variables:
                continue
            elif stan_varname in codegen_walker.datastructure_function_names:
                continue
            for component in element.components:
                self.code += f"real {stan_varname} = {codegen_walker.walk(component.ast)};\n"

        self.code += "\n"

        # Generate code for returning outcomes of interest
        integ_outcome_vector_names = [
            name + "_dydt" for name in integ_outcome_vector_names
        ]
        for index, outcome_variable_name in enumerate(
            integ_outcome_vector_names, 1
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

    def build_driving_data_ftn(self):
        for element in self.elements:
            for component in element.components:
                self.datastructure_builder_walker.walk(component.ast, vensim_name_to_identifier(element.name))

# all class share init and build_block() function, motivating the inheritance (modularize functions to use super(); relevant to visitor pattern)
class StanDataBuilder:
    def __init__(self, stan_model_context: "StanModelContext"):
        self.stan_model_context = stan_model_context
    def build_block(self):
        raise NotImplementedError()


class Draws2DataStanDataBuilder(StanDataBuilder):
    def __init__(self, stan_model_context):
        self.stan_model_context = stan_model_context
        super().__init__(self.stan_model_context) # (Draws2DataStanDataBuilder, self)

    def build_block(self):
        stan_params = [stmt.lhs_variable for stmt in self.stan_model_context.sample_statements]
        code = IndentedString()
        code += "data{\n"
        code.indent_level += 1
        code += "int <lower=0> S;  // # of draws from prior \n"
        code += "int <lower=0> M;  // # of draws from posterior (# of chains * # of draws from each chain)\n"
        code += "int <lower=0> N;  // # of observation\n"
        code += "int <lower=0> Q;  // # of target_simulated_stock and obs_vectors \n"
        code += "int <lower=0> R;  // # of subgroups for hierarchical Bayes \n"
        code += "real <lower=0> time_step;\n"
        code += "array[N] real integration_times;\n"
        for _, entry in self.stan_model_context.stan_data.items():
            if entry.data_name in stan_params:
                continue
            code += f"{entry.stan_type} {entry.data_name};\n"

        code.indent_level -= 1
        code += "}\n"
        return code.string
class Data2DrawsStanDataBuilder(StanDataBuilder): #TODO @Dashadower I copied super(Data2DrawsStanDataBuilder); ok?
    def __init__(self, precision_context, stan_model_context):
        self.precision_context = precision_context
        self.stan_model_context = stan_model_context
        super(Data2DrawsStanDataBuilder, self).__init__(self.stan_model_context)

    def build_block(self):
        code = IndentedString()
        code += "data{\n"
        code.indent_level += 1
        code += "int <lower=0> S;  // # of draws from prior \n"
        code += "int <lower=0> M;  // # of draws from posterior (# of chains * # of draws from each chain)\n"
        code += "int <lower=0> N;  // # of observation\n"
        code += "int <lower=0> Q;  // # of target_simulated_stock and obs_vectors \n"
        code += "int <lower=0> R;  // # of subgroups for hierarchical Bayes \n"
        code += "real <lower=0> time_step;\n"
        code += "array[N] real integration_times;\n"
        # TODO @Dashadower
        #  Q1. where code intentions could be logged (answer to theses qs) e.g. reason for filtering out stan_param is to leave _obs
        #  Q2. using `stan_type`, could hierarchy arrays of vector coding be improved?
        #  Q3. which code is better btw R ==1 (excluding to leave _obs) vs else part (including _obs)?

        stan_params = [stmt.lhs_variable for stmt in self.stan_model_context.sample_statements]
        if self.precision_context.R == 1:
            for _, entry in self.stan_model_context.stan_data.items():
                if entry.data_name in stan_params:
                    continue
                code += f"{entry.stan_type} {entry.data_name};\n"

            for statement in self.stan_model_context.sample_statements:
                if statement.lhs_expr in self.stan_model_context.obs_integ_outcome_vector_names:
                    code += f"array[N] real {statement.lhs_variable};\n"

        else:
            for _, entry in self.stan_model_context.stan_data.items():
                if entry.data_name in stan_params:
                    continue
                # elif entry.data_name in self.stan_model_context.obs_integ_outcome_vector_names: #_obs###########
                #     code += f"array[N] vector[R] {entry.data_name}; \n"
                else: # e.g. process_noise_scale
                    code += f"{entry.stan_type} {entry.data_name};\n"

            for statement in self.stan_model_context.sample_statements:
                if statement.lhs_expr in self.stan_model_context.obs_integ_outcome_vector_names:
                    code += f"array[N] vector[R] {statement.lhs_variable};\n"
        code.indent_level -= 1
        code += "}\n"
        return code.string


class StanTransformedDataBuilder:
    def __init__(self, stan_model_context, vensim_model_context):
        self.stan_model_context = stan_model_context
        self.vensim_model_context = vensim_model_context
        self.abstract_model = self.vensim_model_context.abstract_model

    def build_block(
            self,
            integ_outcome_vector_names,
            lookup_function_dict,
            driving_data_ftn_set,
            stock_initial_values: Dict[str, str]
    ):
        self.code = IndentedString()
        self.code += "transformed data {\n"
        self.code.indent_level += 1
        variable_ast_dict: Dict[str, AbstractSyntax] = {}
        for element in self.abstract_model.sections[0].elements:
            stan_varname = vensim_name_to_identifier(element.name)  # if stan_varname not in driving_data_ftn_set:
            variable_ast_dict[stan_varname] = element.components[0].ast

        self.code += f"real initial_time = {self.stan_model_context.initial_time};\n"
        self.code += "\n"
        self.code += "// Initial ODE values\n"
        for outcome_variable_name in integ_outcome_vector_names:
            if outcome_variable_name in stock_initial_values:
                continue
            for element in self.abstract_model.sections[0].elements:
                if vensim_name_to_identifier(element.name) == outcome_variable_name:
                    component = element.components[0]
                    assert isinstance(component.ast, IntegStructure), "Output variable component must be an INTEG."
                    self.code += f"real {outcome_variable_name}__init = {InitialValueCodegenWalker(lookup_function_dict, driving_data_ftn_set, variable_ast_dict).walk(component.ast)};\n"
                    break
        self.code += "\n"

        self.code += "// Initialize ODE stock vector\n"
        self.code += f'vector[{len(integ_outcome_vector_names)}] initial_outcome; \n'
        for index, name in enumerate(integ_outcome_vector_names, 1):
            if name in stock_initial_values:
                self.code += f"initial_outcome[{index}] = {stock_initial_values[name]};  // Defined within stan\n"
            else:
                self.code += f"initial_outcome[{index}] = {name}__init;\n"

        self.code.indent_level -= 1
        self.code += "}\n"

        return str(self.code)


class StanParametersBuilder:
    def __init__(self, precision_context: "PrecisionContext", stan_model_context: "StanModelContext", vensim_model_context: "VensimModelContext"):
        self.precision_context = precision_context
        self.stan_model_context = stan_model_context
        self.vensim_model_context = vensim_model_context

    def build_block(self, hier_est_param_names):

        data_variable_names = tuple(self.stan_model_context.stan_data.keys())
        code = IndentedString()
        code += "parameters{\n"
        code.indent_level += 1  # Enter parameters block

        added_parameters = set()

        for statement in self.stan_model_context.sample_statements:
            if statement.lhs_expr in data_variable_names:
                continue
            if statement.lhs_expr in added_parameters: #TODO @Dashadower ??
                continue
            if statement.distribution_type == statement.assignment_dist: #TODO @Dashadower ??
                continue
            if statement.lhs_expr in hier_est_param_names:
                if statement.lower > float("-inf") and statement.upper < float("inf"):
                    code += f"array[R] real<lower={statement.lower}, upper={statement.upper}> {statement.lhs_expr};\n"
                elif statement.lower > float("-inf"):
                    code += f"array[R] real<lower={statement.lower}> {statement.lhs_expr};\n"
                elif statement.upper < float("inf"):
                    code += f"array[R] real <upper={statement.upper}> {statement.lhs_expr};\n"
                else:
                    code += f"array[R] real {statement.lhs_expr};\n"

            elif statement.lhs_expr in self.stan_model_context.obs_integ_outcome_vector_names:
                continue
                #code += f"array[N] vector[R] {statement.lhs_variable};\n"

            else:
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

class StanTransformedParametersBuilder:
    def __init__(self, precision_context, stan_model_context, vensim_model_context):
        self.precision_context = precision_context
        self.stan_model_context = stan_model_context
        self.vensim_model_context = vensim_model_context
        self.abstract_model = self.vensim_model_context.abstract_model

    def build_block(
            self,
            est_param_names,
            hier_est_param_names,
            integ_outcome_vector_names,
            function_name,
    ):
        self.code = IndentedString()
        self.code += "transformed parameters {\n"
        self.code.indent_level += 1
        self.write_block(est_param_names, hier_est_param_names, integ_outcome_vector_names, function_name)
        self.code.indent_level -= 1
        self.code += "}\n"

        return str(self.code)

    def write_block(self,
                    est_param_names,
                    hier_est_param_names,
                    integ_outcome_vector_names,
                    function_name):
        argument_variables = []
        for var in est_param_names:
            if isinstance(var, str):
                argument_variables.append(var)
            elif isinstance(var, tuple):
                var_name = var[1]
                argument_variables.append(var_name)

        variable_ast_dict: Dict[str, AbstractSyntax] = {}
        for element in self.abstract_model.sections[0].elements:
            stan_varname = vensim_name_to_identifier(element.name)  # if stan_varname not in driving_data_ftn_set:
            variable_ast_dict[stan_varname] = element.components[0].ast

        self.code += "// Define integ_outcome (sytax), target simulated (semantic) vector\n"
        if self.precision_context.R == 1:
            for index, name in enumerate(integ_outcome_vector_names, 1):
                self.code += f"array[N] real {name}; \n"

        else:
            for index, name in enumerate(integ_outcome_vector_names, 1):
                self.code += f"array[N] vector[R] {name}; \n"
        self.code += "\n"

        self.code += "// Generate integration approximation \n"
        if self.precision_context.R == 1:
            ode_solver_code = f"vector[{len(integ_outcome_vector_names)}] integrated_result[N] = ode_rk45({function_name}, initial_outcome, initial_time, integration_times"
            if len(argument_variables) > 0:
                ode_solver_code += ", " + f"{', '.join(argument_variables)}"
            self.code += ode_solver_code + ");\n"
            self.code += "\n"

            self.code += "// Assign approximated integration to target simulated vectors\n"
            for index, name in enumerate(integ_outcome_vector_names, 1):
                self.code += f"{name} = integrated_result[:, {index}];\n"

        else:
            self.code += "for (r in 1:R){\n"
            self.code.indent_level += 1
            ode_solver_code = f"array[N] vector[{len(integ_outcome_vector_names)}] integrated_result = ode_rk45({function_name}, initial_outcome, initial_time, integration_times"

            if len(argument_variables) > 0:
                for var in argument_variables:
                    if var in hier_est_param_names:
                        ode_solver_code += ", " + f"{var}[r]"
                    else:
                        ode_solver_code += ", " + f"{var}"
            self.code += ode_solver_code + ");\n"
            self.code += "\n"

            self.code += "// Assign target simulated to latent stock vectors\n"
            for index, name in enumerate(integ_outcome_vector_names, 1):
                self.code += f"{name}[:, r] = integrated_result[:, {index}];\n"
            self.code.indent_level -= 1
            self.code += "}\n"


class StanModelBuilder:
    def __init__(self, precision_context: "PrecisoinContext", stan_model_context: "StanModelContext"):
        self.precision_context = precision_context
        self.stan_model_context = stan_model_context

    def build_block(self, hier_est_param_names):
        code = IndentedString()
        code += "model{\n"
        code.indent_level += 1
        if self.precision_context.R == 1:
            for statement in self.stan_model_context.sample_statements:
                if statement.distribution_type != statement.assignment_dist:
                    code += f"{statement.lhs_expr} ~ {statement.distribution_type}({', '.join([str(arg) for arg in statement.distribution_args])});\n"
        else:
            for statement in self.stan_model_context.sample_statements:
                param_name = statement.lhs_expr
                if param_name in hier_est_param_names:
                    dist_code = "rep_vector(" + f'{statement.distribution_args[0]}, R), ' + f"{', '.join(statement.distribution_args[1:])}"
                    code += f"{param_name} ~ {statement.distribution_type}({dist_code});\n"

                elif param_name in self.stan_model_context.obs_integ_outcome_vector_names:
                    code += "for (r in 1:R)\n"
                    code.indent_level += 1
                    dist_code = f'{param_name}'[:-4] + "[:, r], " + f"{', '.join(statement.distribution_args[1:])}"
                    code += f"{param_name}[:, r] ~ {statement.distribution_type}({dist_code});\n"
                    code.indent_level -= 1

                else:
                    if statement.distribution_type != statement.assignment_dist:
                        code += f"{param_name} ~ {statement.distribution_type}({', '.join([str(arg) for arg in statement.distribution_args])});\n"
        code.indent_level -= 1
        code += "}\n"
        #TODO @Dashadower what is the diff btw classes that has its own code vs not (self.code VS return str(code))
        return str(code)


class Draws2DataStanGQBuilder():
    def __init__(self, precision_context: "PrecisionContext", stan_model_context: "StanModelContext", vensim_model_context: "VensimModelContext"):
        self.precision_context = precision_context
        self.stan_model_context = stan_model_context
        self.vensim_model_context = vensim_model_context
        # TODO @Dashadower how to write message, if some target_simulated_vector_names is not in vensim_integ_outcome (inconsistency btw user-defined and vensim syntax)
        integ_outcome_vector_names = set(self.stan_model_context.target_integ_outcome_vector_names) & set(self.vensim_model_context.integ_outcome_vector_names)

    def build_block(self, hier_est_param_names, transformed_parameters_code: str = ""):
        self.code = IndentedString()
        self.code += "generated quantities{\n"
        self.code.indent_level += 1
        self.build_param_rng_functions(hier_est_param_names)
        self.code += "\n"
        self.code.add_raw(transformed_parameters_code, ignore_indent=True)
        self.code += "\n"
        self.build_obs_rng_functions()
        self.code.indent_level -= 1
        self.code += "}\n"

        return str(self.code)


    def build_param_rng_functions(self, hier_est_param_names):

        ignored_variables = set(self.stan_model_context.stan_data.keys()).union(
            set(self.vensim_model_context.integ_outcome_vector_names))
        stmt_sorter = StatementTopoSort(ignored_variables)

        for sample_statements in self.stan_model_context.sample_statements:
            stmt_sorter.add_stmt(sample_statements.lhs_variable, sample_statements.rhs_variables)

        # print(stmt_sorter.dependency_graph)
        # print(stmt_sorter.ignored_variables)
        # print(self.stan_model_context.stan_data.keys())

        param_draw_order = stmt_sorter.sort()
        statements = self.stan_model_context.sample_statements.copy()


        processed_statements = set()
        for param_name in param_draw_order:
            if param_name in self.stan_model_context.obs_integ_outcome_vector_names:
                continue
            for statement in statements:
                if statement in processed_statements:
                    continue
                if param_name == statement.lhs_variable:
                    if statement.init_state:
                        param_name = param_name + "__init"
                    if param_name in hier_est_param_names:


                        dist_code = "rep_vector(" + f'{statement.distribution_args[0]}, R), ' + f"{', '.join(statement.distribution_args[1:])}"
                        self.code += f"real {param_name}[R] =  {statement.distribution_type}_rng({dist_code});\n"
                    else:
                        self.code += f"real {param_name} = {statement.distribution_type}_rng({', '.join(statement.distribution_args)});\n"
                    processed_statements.add(statement)

    def build_obs_rng_functions(self):
        if self.precision_context.R == 1:
            self.code += "// Define and assign generated value to observed vector (matching vector)\n"

            for statement in self.stan_model_context.sample_statements:
                if statement.lhs_expr in self.stan_model_context.obs_integ_outcome_vector_names:
                    vec_name = statement.lhs_expr
                    self.code += f"array [N] real {vec_name} = {statement.distribution_type}_rng({', '.join(statement.distribution_args)});\n"
        else:
            self.code += "// Define observed vector (matching vector)\n"
            for statement in self.stan_model_context.sample_statements:
                if statement.lhs_expr in self.stan_model_context.obs_integ_outcome_vector_names:
                    self.code += f"array[N] vector[R] {statement.lhs_expr};\n"

            self.code += "// Assign generated value to observed vector (matching vector)\n"
            self.code += "for (r in 1:R){\n"
            self.code.indent_level += 1
            for statement in self.stan_model_context.sample_statements:
                #TODO @Dashadower statement.lhs_variable vs .lhs_expr
                if statement.lhs_expr in self.stan_model_context.obs_integ_outcome_vector_names:
                    vec_name = statement.lhs_expr
                    dist_code = f'{vec_name}'[:-4] + "[:, r], " + f"{', '.join(statement.distribution_args[1:])}"
                    self.code += f"{vec_name}[:, r] = {statement.distribution_type}_rng({dist_code});\n"
            # link(alpha) ~ N(0,1); link(alpha) is expr, alpha is var
            self.code.indent_level -= 1
            self.code += "}\n"

class Data2DrawsStanGQBuilder():
    def __init__(self, precision_context: "PrecisionContext", stan_model_context: "StanModelContext", vensim_model_context: "VensimModelContext"):
        self.precision_context = precision_context
        self.stan_model_context = stan_model_context
        self.vensim_model_context = vensim_model_context


    def build_block(self):
        self.code = IndentedString()
        self.code += "generated quantities{\n"
        self.code.indent_level += 1
        self.build_post_pred_rng_functions()
        self.code += "\n"
        self.build_loglik_functions()
        self.code.indent_level -= 1
        self.code += "}\n"

        return str(self.code)

    def build_loglik_functions(self):
        self.code += "real loglik;\n"

        if self.precision_context.R == 1:
            for statement in self.stan_model_context.sample_statements:
                if statement.lhs_expr in self.stan_model_context.obs_integ_outcome_vector_names:
                    param_name = statement.lhs_expr
                    loc = statement.distribution_args[0]
                    scale = statement.distribution_args[1]
                    if statement.distribution_type in ["normal", "lognormal"]:
                        self.code += f"loglik += {statement.distribution_type}_lpdf({param_name}|{loc}, {scale});\n"
                    elif statement.distribution_type in ["neg_binom_2"]:
                        self.code += f"loglik += {statement.distribution_type}_lpmf({param_name}|{loc}, {scale});\n"
        else:
            self.code += "for (r in 1:R){\n"
            self.code.indent_level += 1
            for statement in self.stan_model_context.sample_statements:
                if statement.lhs_expr in self.stan_model_context.obs_integ_outcome_vector_names:
                    obs_vec_name = statement.lhs_expr
                    target_vec_name = obs_vec_name[:-4]
                    scale = statement.distribution_args[1]
                    if statement.distribution_type in ["normal", "lognormal"]:
                        self.code += f"loglik += {statement.distribution_type}_lpdf({obs_vec_name}[:, r]|{target_vec_name}[:, r], {scale});\n"
                    elif statement.distribution_type in ["neg_binom_2"]:
                        self.code += f"loglik += {statement.distribution_type}_lpmf({obs_vec_name}[:, r]|{target_vec_name}[:, r], {scale});\n"
            self.code.indent_level -= 1
            self.code += "}\n"

    def build_post_pred_rng_functions(self):

        if self.precision_context.R == 1:
            self.code += "// Define and assign generated value to posterior predictive vector\n"
            for statement in self.stan_model_context.sample_statements:
                if statement.lhs_expr in self.stan_model_context.obs_integ_outcome_vector_names:
                    # TODO @Dashadower how to use the following in the future?
                    #  stan_type = self.stan_model_context.stan_data[statement.lhs_expr].stan_type #     stan_type = self.stan_model_context.stan_data[statement.lhs_expr].stan_type KeyError: 'prey_obs'
                    scale = statement.distribution_args[1]
                    # if stan_type.startswith("vector"):
                    #     self.code += f"{stan_type} {statement.lhs_expr}_post = to_vector({statement.distribution_type}_rng({', '.join(statement.distribution_args)}));\n"
                    # else:
                    #     self.code += f"{stan_type} {statement.lhs_expr}_post = {statement.distribution_type}_rng({', '.join(statement.distribution_args)});\n"
                    self.code += f"array[N] real {statement.lhs_expr}_post = {statement.distribution_type}_rng({', '.join(statement.distribution_args)});\n"
        else:
            self.code += "// Define observed vector (matching vector)\n"
            for statement in self.stan_model_context.sample_statements:
                if statement.lhs_expr in self.stan_model_context.obs_integ_outcome_vector_names:
                    self.code += f"array[N] vector[R] {statement.lhs_expr}_post;\n"

            self.code += "// Assign generated value to observed vector (matching vector)\n"
            self.code += "for (r in 1:R){\n"
            self.code.indent_level += 1
            for statement in self.stan_model_context.sample_statements:
                #TODO @Dashadower statement.lhs_variable vs .lhs_expr, obs_integ_outcome_vector_names is list VS target_// is tuple so the latter doesn't work
                if statement.lhs_expr in self.stan_model_context.obs_integ_outcome_vector_names:
                    scale = statement.distribution_args[1]
                   #TODO {', '.join(statement.distribution_args)} is better; posterior predictive remove _obs?? (w.o. loc, scale)
                    self.code += f"{statement.lhs_expr}_post[:, r] = {statement.distribution_type}_rng({statement.lhs_expr[:-4]}[:, r], {scale});\n"
            self.code.indent_level -= 1
            self.code += "}\n"

