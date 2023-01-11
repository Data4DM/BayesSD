"Develop a model to solve a particular problem, not to model the system." - John Sterman (first principle of use of SD)

"A broad model boundary is more important than a great deal of detail."- John Sterman (tenth principle of use of SD)

List of Actionable models (a.k.a SYSTEM DYNAMICS IN ACTION) from Business Dynamics
- 2 Automobile Leasing Strategy
- 6.3.4 Modeling Large-Scale Construction Projects
- 6.3.6 Automobile Recycling
- 7.2 Global Warming
- 7.3 The War in Drugs
- 11.6 Forecasting Semiconductor Demand
- 12.1.5 World Population and Economic Development
- 18.3 Reengineering the Supply Chain in a High-Velocity Industry


| model no. |                 | sum | box                                                                                                                                                                                                                                      | flow                                                                                                                                                      |
| --------- | --------------- | --- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1         | SEIRb           | 11  | 6 suceptible, exposed, infected, recovered, dead, death_perceived                                                                                                                                                                        | 5 exposing, onsetting, recovering, dying, death_perceiving                                                                                                |
| 2         | project         | 12  | 6 project_resource, task_to_be(=backlog)-{done, reworked, quality_assuranced} , task_released, project_lasted                                                                                                                            | 6 resource_adjusting, completing, rework-{discovering,doing}, work_approving, resource_adjusting, dealine_delaying                                        |
| 3         | market growth   | 12  | 6 sales_force, recent_revenue, backlog, delivery_delay_market_preceived, delivery_delay_company_preceived, capacity                                                                                                                      | 6 salesforce_net_hiring, revenue_net_changing, backlog-{ordering,shiping}, capacity_net_acquisiting, delivery_delay_perceiving                            |
| 4         | long wave       | 12  | 5 order_expected, capital-{supply_line, stock}, goods_supply_line, backlog                                                                                                                                                               | 7 capital-{ordering,acquisiting,discarding}, capital_backlog-{ordering,producing}, goods_capital-{ordering,acquisiting}                                   |
| 5         | mat_info_price  | 17  | 8 production_cost_expected, industry_demanded, {long, short}-run_price_expected, variable_cost_expected, capacity_utilization, wip, inv                                                                                                  | 9 product-{starting, ing, shiping}, charm-{{capacity_util, industry_demand}-nonprice, {short, long}-price}-adjusting, cost-{expected, variable}-adjusting |
| 6         | service quality | 27  | 13 labor_desired, labor_productivity_perceived, vacancies, rookies, personnel_experienced, backlog_service, desired_to, fatigue-{A, E}, cust_service_expected, employee_quality_expected, mgmt_quality_perceived, cust_quality_perceived | 7 + 7                                                                                                                                                     |


Q1. difference between capacity and capital










