"""
Python model 'demand-supply.py'
Translated using PySD
"""

from pathlib import Path
import numpy as np
from scipy import stats

from pysd.py_backend.statefuls import Integ
from pysd.py_backend.lookups import HardcodedLookups
from pysd import Component

__pysd_version__ = "3.6.1"

__data = {"scope": None, "time": lambda: 0}

_root = Path(__file__).parent


component = Component()

#######################################################################
#                          CONTROL VARIABLES                          #
#######################################################################

_control_vars = {
    "initial_time": lambda: 0,
    "final_time": lambda: 100,
    "time_step": lambda: 1,
    "saveper": lambda: time_step(),
}


def _init_outer_references(data):
    for key in data:
        __data[key] = data[key]


@component.add(name="Time")
def time():
    """
    Current time of the model.
    """
    return __data["time"]()


@component.add(
    name="FINAL TIME", units="Month", comp_type="Constant", comp_subtype="Normal"
)
def final_time():
    """
    The final time for the simulation.
    """
    return __data["time"].final_time()


@component.add(
    name="INITIAL TIME", units="Month", comp_type="Constant", comp_subtype="Normal"
)
def initial_time():
    """
    The initial time for the simulation.
    """
    return __data["time"].initial_time()


@component.add(
    name="SAVEPER",
    units="Month",
    limits=(0.0, np.nan),
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"time_step": 1},
)
def saveper():
    """
    The frequency with which output is stored.
    """
    return __data["time"].saveper()


@component.add(
    name="TIME STEP",
    units="Month",
    limits=(0.0, np.nan),
    comp_type="Constant",
    comp_subtype="Normal",
)
def time_step():
    """
    The time step for the simulation.
    """
    return __data["time"].time_step()


#######################################################################
#                           MODEL VARIABLES                           #
#######################################################################


@component.add(
    name="Order Fulfilment Ratio",
    units="Dmnl",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={
        "max_shipment_rate": 1,
        "backlog_adj_rate_desired": 1,
        "order_fullfilemt_ratio_table": 1,
    },
)
def order_fulfilment_ratio():
    """
    SKU multiscale issues
    """
    return order_fullfilemt_ratio_table(
        max_shipment_rate() / backlog_adj_rate_desired()
    )


@component.add(
    name="Order Fullfilemt Ratio Table",
    comp_type="Lookup",
    comp_subtype="Normal",
    depends_on={"__lookup__": "_hardcodedlookup_order_fullfilemt_ratio_table"},
)
def order_fullfilemt_ratio_table(x, final_subs=None):
    return _hardcodedlookup_order_fullfilemt_ratio_table(x, final_subs)


_hardcodedlookup_order_fullfilemt_ratio_table = HardcodedLookups(
    [0.0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.2, 1.4, 1.6, 1.8, 2.0, 2.0],
    [0.0, 0.2, 0.4, 0.58, 0.73, 0.85, 0.93, 0.97, 0.99, 1.0, 1.0, 1.0],
    {},
    "interpolate",
    {},
    "_hardcodedlookup_order_fullfilemt_ratio_table",
)


@component.add(
    name="Supply Start Rate Desired",
    units="Widget/Month",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"supply_rate_desired": 1, "supply_line_adj_rate": 1},
)
def supply_start_rate_desired():
    return np.maximum(0, supply_rate_desired() + supply_line_adj_rate())


@component.add(
    name="Safety Stock Coverage",
    units="Month",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"critical_ratio": 1},
)
def safety_stock_coverage():
    """
    proportional to CR? -> 10 * CR??
    """
    return 3 * critical_ratio()


@component.add(
    name="Order Fulfillment Rate",
    units="Widget/Month",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"shipment_rate": 1},
)
def order_fulfillment_rate():
    return shipment_rate()


@component.add(
    name="Backlog Adj Rate Desired",
    units="Widget/Month",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"backlog": 1, "backlog_desired": 1, "backlog_adj_time": 1},
)
def backlog_adj_rate_desired():
    """
    For backlog, unlike `supply line adj rate` and `inventory adj rate`, x-coor of `adj_rate` locates between [`desired_state`,`current_state`] and [`adj_time`] y-coor of `adj_rate` locates between [`adj_time`] and [`desired_state`,`current_state`] (preferrably adj_time is the highest as being nonnegtive)
    """
    return (backlog() - backlog_desired()) / backlog_adj_time()


@component.add(
    name="Supply Line Desired",
    units="Widget",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"forecasted_demand_rate": 1, "supply_lead_time": 1},
)
def supply_line_desired():
    return forecasted_demand_rate() * supply_lead_time()


@component.add(name="Critical Ratio", comp_type="Constant", comp_subtype="Normal")
def critical_ratio():
    """
    Ratios are aggregated result and hence we don't need time delay for this information diffusion.
    """
    return 0.8


@component.add(
    name="Backlog Desired", units="Widget", comp_type="Constant", comp_subtype="Normal"
)
def backlog_desired():
    return 0


@component.add(
    name="Max Shipment Rate",
    units="Widget/Month",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"inventory": 1, "shipment_lead_time": 1},
)
def max_shipment_rate():
    """
    a.k.a. Backlog Adj Rate Desired. John has Inventory/Minimum Order Processing Time but the denominator (MOPT) can be seen as Shipment LT. Wish to argue this is symmetric with Demand Adj Rate
    """
    return inventory() / shipment_lead_time()


@component.add(
    name="Shipment Rate",
    units="Widget/Month",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"backlog_adj_rate_desired": 1, "order_fulfilment_ratio": 1},
)
def shipment_rate():
    """
    WRONG: Desired Shipment*Fulfilment Ratio (has to be the rate), Inventory/Shipment Lead Time
    """
    return backlog_adj_rate_desired() * order_fulfilment_ratio()


@component.add(
    name="Demand Rate Adj Rate",
    units="(Widget/Month)/Month",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"demand_rate": 1, "forecasted_demand_rate": 1, "demand_adj_time": 1},
)
def demand_rate_adj_rate():
    """
    Actual demand rate is the desired, forecasted demand rate is the current state. So their difference divided by the adj time becomed adj rate.
    """
    return (demand_rate() - forecasted_demand_rate()) / demand_adj_time()


@component.add(
    name="Inventory Safety Time Desired",
    units="Month",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"shipment_lead_time": 1, "safety_stock_coverage": 1},
)
def inventory_safety_time_desired():
    return shipment_lead_time() + safety_stock_coverage()


@component.add(
    name="Supply Rate Desired",
    units="Widget/Month",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"forecasted_demand_rate": 1, "inventory_adj_rate": 1},
)
def supply_rate_desired():
    return forecasted_demand_rate() + inventory_adj_rate()


@component.add(
    name="Demand Rate",
    units="Widget/Month",
    comp_type="Constant",
    comp_subtype="Normal",
)
def demand_rate():
    """
    = Desired Shipment. Exogenous. The generated value above does not have any affect as it will be replaced by time series data randomly generated on python platform.
    """
    return stats.truncnorm.rvs(0, 200, loc=100, scale=10, size=())


@component.add(
    name="Forecasted Demand Rate",
    units="Widget",
    comp_type="Stateful",
    comp_subtype="Integ",
    depends_on={"_integ_forecasted_demand_rate": 1},
    other_deps={
        "_integ_forecasted_demand_rate": {
            "initial": {"demand_rate": 1},
            "step": {"demand_rate_adj_rate": 1},
        }
    },
)
def forecasted_demand_rate():
    return _integ_forecasted_demand_rate()


_integ_forecasted_demand_rate = Integ(
    lambda: demand_rate_adj_rate(),
    lambda: demand_rate(),
    "_integ_forecasted_demand_rate",
)


@component.add(
    name="Inventory Adj Time",
    units="Month",
    comp_type="Constant",
    comp_subtype="Normal",
)
def inventory_adj_time():
    return 3


@component.add(name="Supply Line Adj Time", comp_type="Constant", comp_subtype="Normal")
def supply_line_adj_time():
    return 3


@component.add(
    name="Shipment Lead Time",
    units="Month",
    comp_type="Constant",
    comp_subtype="Normal",
)
def shipment_lead_time():
    """
    Min Shipment Time??
    """
    return 3


@component.add(
    name="Backlog Adj Time", units="Month", comp_type="Constant", comp_subtype="Normal"
)
def backlog_adj_time():
    """
    Desired Shipment Delay by HR
    """
    return 3


@component.add(
    name="Inventory Adj Rate",
    units="Widget/Month",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"inventory_desired": 1, "inventory": 1, "inventory_adj_time": 1},
)
def inventory_adj_rate():
    """
    x-coor of `adj_rate` locates before [`desired_state`,`current_state`, `adj_time`] (which shares x-coor) y-coor of `adj_rate` locates between [`desired_state`,`current_state`] and [`adj_time`]
    """
    return (inventory_desired() - inventory()) / inventory_adj_time()


@component.add(
    name="Supply Line Adj Rate",
    units="Widget/Month",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"supply_line_desired": 1, "supply_line": 1, "supply_line_adj_time": 1},
)
def supply_line_adj_rate():
    """
    x-coor of `adj_rate` locates before [`desired_state`,`current_state`, `adj_time`] (which shares x-coor) y-coor of `adj_rate` locates between [`desired_state`,`current_state`] and [`adj_time`]
    """
    return (supply_line_desired() - supply_line()) / supply_line_adj_time()


@component.add(
    name="Backlog",
    units="Widget",
    comp_type="Stateful",
    comp_subtype="Integ",
    depends_on={"_integ_backlog": 1},
    other_deps={
        "_integ_backlog": {
            "initial": {"backlog_desired": 1, "order_rate": 1, "backlog_adj_time": 1},
            "step": {"order_rate": 1, "order_fulfillment_rate": 1},
        }
    },
)
def backlog():
    return _integ_backlog()


_integ_backlog = Integ(
    lambda: order_rate() - order_fulfillment_rate(),
    lambda: backlog_desired() + order_rate() * backlog_adj_time(),
    "_integ_backlog",
)


@component.add(
    name="Order Rate",
    units="Widget/Month",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"demand_rate": 1},
)
def order_rate():
    return demand_rate()


@component.add(
    name="Supply Rate",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"supply_line": 1, "supply_lead_time": 1},
)
def supply_rate():
    """
    can be modeled as DELAY3(Supply Start Rate, Lead Time) but as its stan transition is not implemented yet, we are using first order delay.
    """
    return supply_line() / supply_lead_time()


@component.add(
    name="Inventory Desired",
    units="Widget/Month",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"forecasted_demand_rate": 1, "inventory_safety_time_desired": 1},
)
def inventory_desired():
    return forecasted_demand_rate() * inventory_safety_time_desired()


@component.add(name="Demand Adj Time", comp_type="Constant", comp_subtype="Normal")
def demand_adj_time():
    return 3


@component.add(
    name="Inventory",
    units="Widget",
    comp_type="Stateful",
    comp_subtype="Integ",
    depends_on={"_integ_inventory": 1},
    other_deps={
        "_integ_inventory": {
            "initial": {"inventory_desired": 1},
            "step": {"supply_rate": 1, "shipment_rate": 1},
        }
    },
)
def inventory():
    return _integ_inventory()


_integ_inventory = Integ(
    lambda: supply_rate() - shipment_rate(),
    lambda: inventory_desired(),
    "_integ_inventory",
)


@component.add(name="Supply Lead Time", comp_type="Constant", comp_subtype="Normal")
def supply_lead_time():
    return 3


@component.add(
    name="Supply Start Rate",
    units="Widget/Month",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"supply_start_rate_desired": 1},
)
def supply_start_rate():
    return supply_start_rate_desired()


@component.add(
    name="Supply Line",
    comp_type="Stateful",
    comp_subtype="Integ",
    depends_on={"_integ_supply_line": 1},
    other_deps={
        "_integ_supply_line": {
            "initial": {"supply_line_desired": 1},
            "step": {"supply_start_rate": 1, "supply_rate": 1},
        }
    },
)
def supply_line():
    return _integ_supply_line()


_integ_supply_line = Integ(
    lambda: supply_start_rate() - supply_rate(),
    lambda: supply_line_desired(),
    "_integ_supply_line",
)
