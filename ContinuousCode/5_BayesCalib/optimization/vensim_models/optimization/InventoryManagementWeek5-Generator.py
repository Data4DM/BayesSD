"""
Python model 'InventoryManagementWeek5-Generator.py'
Translated using PySD
"""

from pathlib import Path
import numpy as np
from scipy import stats

from pysd.py_backend.statefuls import Integ
from pysd.py_backend.lookups import HardcodedLookups
from pysd import Component

__pysd_version__ = "3.7.1"

__data = {"scope": None, "time": lambda: 0}

_root = Path(__file__).parent


component = Component()

#######################################################################
#                          CONTROL VARIABLES                          #
#######################################################################

_control_vars = {
    "initial_time": lambda: 0,
    "final_time": lambda: 100,
    "time_step": lambda: 0.0625,
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
    name="FINAL TIME", units="Week", comp_type="Constant", comp_subtype="Normal"
)
def final_time():
    """
    The final time for the simulation.
    """
    return __data["time"].final_time()


@component.add(
    name="INITIAL TIME", units="Week", comp_type="Constant", comp_subtype="Normal"
)
def initial_time():
    """
    The initial time for the simulation.
    """
    return __data["time"].initial_time()


@component.add(
    name="SAVEPER",
    units="Week",
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
    units="Week",
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
    name="Noise Standard Deviation",
    units="Dimensionless",
    comp_type="Constant",
    comp_subtype="Normal",
)
def noise_standard_deviation():
    """
    The standard deviation of the pink noise process.
    """
    return 1


@component.add(
    name="White Noise",
    units="Dimensionless",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={
        "noise_standard_deviation": 1,
        "noise_correlation_time": 1,
        "time_step": 1,
    },
)
def white_noise():
    """
    White noise input to the pink noise process.
    """
    return noise_standard_deviation() * (
        (24 * noise_correlation_time() / time_step()) ** 0.5
        * (np.random.uniform(0, 1, size=()) - 0.5)
    )


@component.add(
    name="Production Rate",
    units="Widgets/Week",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={
        "work_in_process_inventory": 1,
        "manufacturing_cycle_time": 1,
        "process_noise": 1,
    },
)
def production_rate():
    """
    Production is a third order delay of the production start rate, with the delay time determined by the manufacturing cycle time.
    """
    return (
        work_in_process_inventory()
        / manufacturing_cycle_time()
        * np.maximum(0, 1 + process_noise())
    )


@component.add(
    name="Customer Order Rate",
    units="Widgets/Week",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"initial_customer_order_rate": 1},
)
def customer_order_rate():
    return np.maximum(0, initial_customer_order_rate())


@component.add(
    name="Change in Process Noise",
    units="1/Week",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"process_noise": 1, "white_noise": 1, "noise_correlation_time": 1},
)
def change_in_process_noise():
    return (process_noise() - white_noise()) / noise_correlation_time()


@component.add(
    name="Noise Correlation Time",
    units="Week",
    comp_type="Constant",
    comp_subtype="Normal",
)
def noise_correlation_time():
    """
    The correlation time constant for Pink Noise.
    """
    return 10


@component.add(
    name="Process Noise",
    units="Dimensionless",
    comp_type="Stateful",
    comp_subtype="Integ",
    depends_on={"_integ_process_noise": 1},
    other_deps={
        "_integ_process_noise": {"initial": {}, "step": {"change_in_process_noise": 1}}
    },
)
def process_noise():
    return _integ_process_noise()


_integ_process_noise = Integ(
    lambda: change_in_process_noise(), lambda: 0, "_integ_process_noise"
)


@component.add(
    name="Shipment Rate Measured Data",
    units="Widgets/Week",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"ship_measurement_noise_scale": 1, "noise_seed": 1, "shipment_rate": 1},
)
def shipment_rate_measured_data():
    return (
        stats.truncnorm.rvs(0, 2, loc=1, scale=ship_measurement_noise_scale(), size=())
        * shipment_rate()
    )


@component.add(
    name="Ship Measurement Noise Scale",
    units="dmnl",
    comp_type="Constant",
    comp_subtype="Normal",
)
def ship_measurement_noise_scale():
    return 0.1


@component.add(
    name="Prod Start Measurement Noise Scale",
    units="dmnl",
    comp_type="Constant",
    comp_subtype="Normal",
)
def prod_start_measurement_noise_scale():
    return 0.1


@component.add(
    name="Production Start Rate Measured Data",
    units="Widgets/Week",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={
        "prod_start_measurement_noise_scale": 1,
        "noise_seed": 1,
        "production_start_rate": 1,
    },
)
def production_start_rate_measured_data():
    return (
        stats.truncnorm.rvs(
            0, 2, loc=1, scale=prod_start_measurement_noise_scale(), size=()
        )
        * production_start_rate()
    )


@component.add(
    name="Adjustment for WIP",
    units="Widgets/Week",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={
        "desired_wip": 1,
        "work_in_process_inventory": 1,
        "wip_adjustment_time": 1,
    },
)
def adjustment_for_wip():
    """
    The adjustment to the production start rate from the adequacy of WIP inventory.
    """
    return (desired_wip() - work_in_process_inventory()) / wip_adjustment_time()


@component.add(
    name="Adjustment from Inventory",
    units="Widgets/Week",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"desired_inventory": 1, "inventory": 1, "inventory_adjustment_time": 1},
)
def adjustment_from_inventory():
    """
    The desired production rate is adjusted above or below the forecast based on the inventory position of the plant. When desired inventory > inventory, desired production is increased (and vice-versa). Inventory gaps are corrected over the inv. adj. time.
    """
    return (desired_inventory() - inventory()) / inventory_adjustment_time()


@component.add(
    name="Backlog",
    units="Widgets",
    comp_type="Stateful",
    comp_subtype="Integ",
    depends_on={"_integ_backlog": 1},
    other_deps={
        "_integ_backlog": {
            "initial": {"order_rate": 1, "target_delivery_delay": 1},
            "step": {"order_rate": 1, "order_fulfillment_rate": 1},
        }
    },
)
def backlog():
    """
    The firm's backlog of unfilled orders
    """
    return _integ_backlog()


_integ_backlog = Integ(
    lambda: order_rate() - order_fulfillment_rate(),
    lambda: order_rate() * target_delivery_delay(),
    "_integ_backlog",
)


@component.add(
    name="Change in Exp Orders",
    units="(Widgets/Week)/Week",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={
        "customer_order_rate": 1,
        "expected_order_rate": 1,
        "time_to_average_order_rate": 1,
    },
)
def change_in_exp_orders():
    """
    The demand forecast adjusts to the actual order rate over a time period determined by the Time to Average Order Rate. The demand forecast is formed by first-order exponential smoothing, a widely used forecasting technique.
    """
    return (
        customer_order_rate() - expected_order_rate()
    ) / time_to_average_order_rate()


@component.add(
    name="Desired Inventory",
    units="Widgets",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"desired_inventory_coverage": 1, "expected_order_rate": 1},
)
def desired_inventory():
    """
    The desired inventory level sought by the plant. Experience suggests that to maintain customer service by providing full and reliable deliveries, the plant must maintain a certain coverage of throughput (demand), estimated by the demand forecast.
    """
    return desired_inventory_coverage() * expected_order_rate()


@component.add(
    name="Desired Inventory Coverage",
    units="Weeks",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"minimum_order_processing_time": 1, "safety_stock_coverage": 1},
)
def desired_inventory_coverage():
    """
    Desired inventory coverage is the number of weeks of the demand forecast the plant seeks to maintain in inventory. This inventory coverage is required to maintain delivery reliability by buffering the plant against unforeseen variations in demand or production. It consists of the normal order processing time plus an additional term representing the coverage desired to maintain safety stocks.
    """
    return minimum_order_processing_time() + safety_stock_coverage()


@component.add(
    name="Desired Production",
    units="Widgets/Week",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"expected_order_rate": 1, "adjustment_from_inventory": 1},
)
def desired_production():
    """
    Desired Production is the demand forecast (Expected Order Rate) adjusted to bring the inventory position in line with the target inventory level.
    """
    return np.maximum(0, expected_order_rate() + adjustment_from_inventory())


@component.add(
    name="Desired Production Start Rate",
    units="Widgets/Week",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"desired_production": 1, "adjustment_for_wip": 1},
)
def desired_production_start_rate():
    """
    The desired rate of production starts, equal to the desired production rate adjusted by the adequacy of the WIP inventory.
    """
    return desired_production() + adjustment_for_wip()


@component.add(
    name="Desired Shipment Rate",
    units="Widgets/Week",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"backlog": 1, "target_delivery_delay": 1},
)
def desired_shipment_rate():
    """
    The desired shipment rate is determined by the backlog and the target delivery delay.
    """
    return backlog() / target_delivery_delay()


@component.add(
    name="Desired WIP",
    units="Widgets",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"manufacturing_cycle_time": 1, "desired_production": 1},
)
def desired_wip():
    """
    The desired quantity of work in process inventory. Proportional to the manufacturing cycle time and the desired rate of production.
    """
    return manufacturing_cycle_time() * desired_production()


@component.add(
    name="Expected Order Rate",
    units="Widgets/Week",
    comp_type="Stateful",
    comp_subtype="Integ",
    depends_on={"_integ_expected_order_rate": 1},
    other_deps={
        "_integ_expected_order_rate": {
            "initial": {"customer_order_rate": 1},
            "step": {"change_in_exp_orders": 1},
        }
    },
)
def expected_order_rate():
    """
    The demand forecast is formed by adaptive expectations, using exponential smoothing, a common forecasting technique. The initial forecast is equal to the initial customer order rate.
    """
    return _integ_expected_order_rate()


_integ_expected_order_rate = Integ(
    lambda: change_in_exp_orders(),
    lambda: customer_order_rate(),
    "_integ_expected_order_rate",
)


@component.add(
    name="Initial Customer Order Rate",
    units="Widgets/Week",
    comp_type="Constant",
    comp_subtype="Normal",
)
def initial_customer_order_rate():
    return 10000


@component.add(
    name="Inventory",
    units="Widgets",
    comp_type="Stateful",
    comp_subtype="Integ",
    depends_on={"_integ_inventory": 1},
    other_deps={
        "_integ_inventory": {
            "initial": {"desired_inventory": 1},
            "step": {"production_rate": 1, "shipment_rate": 1},
        }
    },
)
def inventory():
    """
    The level of finished goods inventory in the plant. Increased by production and decreased by shipments. Initially set to the desired inventory level.
    """
    return _integ_inventory()


_integ_inventory = Integ(
    lambda: production_rate() - shipment_rate(),
    lambda: desired_inventory(),
    "_integ_inventory",
)


@component.add(
    name="Inventory Adjustment Time",
    units="Weeks",
    comp_type="Constant",
    comp_subtype="Normal",
)
def inventory_adjustment_time():
    """
    The inventory adjustment time is the time period over which the plant seeks to bring inventory in balance with the desired level. Initially set to 8 weeks.
    """
    return 8


@component.add(
    name="Manufacturing Cycle Time",
    units="Weeks",
    comp_type="Constant",
    comp_subtype="Normal",
)
def manufacturing_cycle_time():
    """
    The average delay between the start and completion of production
    """
    return 8


@component.add(
    name="Maximum Shipment Rate",
    units="Widgets/Week",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"inventory": 1, "minimum_order_processing_time": 1},
)
def maximum_shipment_rate():
    """
    The maximum rate of shipments the firm can achieve given their current inventory level and the minimum order processing time.
    """
    return inventory() / minimum_order_processing_time()


@component.add(
    name="Prod Measurement Noise Scale",
    units="dmnl",
    comp_type="Constant",
    comp_subtype="Normal",
)
def prod_measurement_noise_scale():
    return 0.1


@component.add(
    name="Minimum Order Processing Time",
    units="Weeks",
    comp_type="Constant",
    comp_subtype="Normal",
)
def minimum_order_processing_time():
    """
    The minimum time required to process and ship an order.
    """
    return 2


@component.add(
    name="Noise Seed",
    units="Dimensionless",
    comp_type="Constant",
    comp_subtype="Normal",
)
def noise_seed():
    """
    Random number generator seed. Vary to generate a different sequence of random numbers.
    """
    return 2


@component.add(
    name="Order Fulfillment Rate",
    units="Widgets/Week",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"shipment_rate": 1},
)
def order_fulfillment_rate():
    """
    The order fulfillment rate is equal to the physical shipment rate.
    """
    return shipment_rate()


@component.add(
    name="Order Fulfillment Ratio",
    units="Dimensionless",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={
        "maximum_shipment_rate": 1,
        "desired_shipment_rate": 1,
        "table_for_order_fulfillment": 1,
    },
)
def order_fulfillment_ratio():
    """
    The Fraction of customer orders filled is determined by the ratio of the normal shipment rate to the desired rate. The normal rate is the rate current inventory permits under normal circumstances. Low inventory availability reduces shipments below customer orders. Unfilled customer orders are lost.
    """
    return table_for_order_fulfillment(
        maximum_shipment_rate() / desired_shipment_rate()
    )


@component.add(
    name="Order Rate",
    units="Widgets/Week",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"customer_order_rate": 1},
)
def order_rate():
    """
    The incoming order rate, equal to customer orders.
    """
    return customer_order_rate()


@component.add(
    name="Production Rate Measured Data",
    units="Widgets/Week",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={
        "prod_measurement_noise_scale": 1,
        "noise_seed": 1,
        "production_rate": 1,
    },
)
def production_rate_measured_data():
    return (
        np.exp(
            prod_measurement_noise_scale()
            * stats.truncnorm.rvs(-6, 6, loc=0, scale=1, size=())
        )
        * production_rate()
    )


@component.add(
    name="Production Start Rate",
    units="Widgets/Week",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"desired_production_start_rate": 1},
)
def production_start_rate():
    """
    The production start rate is the desired production start rate, constrained to be nonnegative.
    """
    return np.maximum(0, desired_production_start_rate())


@component.add(
    name="Safety Stock Coverage",
    units="Weeks",
    comp_type="Constant",
    comp_subtype="Normal",
)
def safety_stock_coverage():
    """
    Safety stock coverage is the number of weeks of the expected order rate the firm would like to maintain in inventory over and above the normal order processing time. The safety stock provides a buffer against the possibility that unforeseen variations in demand will cause shipments to fall below orders.
    """
    return 2


@component.add(
    name="Shipment Rate",
    units="Widgets/Week",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"desired_shipment_rate": 1, "order_fulfillment_ratio": 1},
)
def shipment_rate():
    """
    The shipment rate is the desired shipment rate multiplied by the fraction of orders filled (the order fulfillment ratio. Shipments fall below desired shipments when the feasible shipment rate falls below the desired rate, indicating that some products are unavailable.
    """
    return desired_shipment_rate() * order_fulfillment_ratio()


@component.add(
    name="Table for Order Fulfillment",
    units="Dimensionless",
    comp_type="Lookup",
    comp_subtype="Normal",
    depends_on={"__lookup__": "_hardcodedlookup_table_for_order_fulfillment"},
)
def table_for_order_fulfillment(x, final_subs=None):
    """
    The ability to ship is constrained by inventory availability. As the inventory level drops, the fraction of customer orders that can be filled decreases. When inventory is zero, shipments cease. Unfilled customer orders are lost.
    !
    !
    !
    """
    return _hardcodedlookup_table_for_order_fulfillment(x, final_subs)


_hardcodedlookup_table_for_order_fulfillment = HardcodedLookups(
    [0.0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.2, 1.4, 1.6, 1.8, 2.0, 2.0],
    [0.0, 0.2, 0.4, 0.58, 0.73, 0.85, 0.93, 0.97, 0.99, 1.0, 1.0, 1.0],
    {},
    "interpolate",
    {},
    "_hardcodedlookup_table_for_order_fulfillment",
)


@component.add(
    name="Target Delivery Delay",
    units="Weeks",
    comp_type="Constant",
    comp_subtype="Normal",
)
def target_delivery_delay():
    """
    The firm's target for delivery time.
    """
    return 2


@component.add(
    name="Time to Average Order Rate",
    units="Weeks",
    comp_type="Constant",
    comp_subtype="Normal",
)
def time_to_average_order_rate():
    """
    The demand forecast adjusts to actual customer orders over this time period.
    """
    return 8


@component.add(
    name="WIP Adjustment Time",
    units="Weeks",
    comp_type="Constant",
    comp_subtype="Normal",
)
def wip_adjustment_time():
    """
    The time required to adjust the WIP inventory to the desired level.
    """
    return 2


@component.add(
    name="Work in Process Inventory",
    units="Widgets",
    comp_type="Stateful",
    comp_subtype="Integ",
    depends_on={"_integ_work_in_process_inventory": 1},
    other_deps={
        "_integ_work_in_process_inventory": {
            "initial": {"desired_wip": 1},
            "step": {"production_start_rate": 1, "production_rate": 1},
        }
    },
)
def work_in_process_inventory():
    """
    WIP inventory accumulates the difference between production starts and completions.
    """
    return _integ_work_in_process_inventory()


_integ_work_in_process_inventory = Integ(
    lambda: production_start_rate() - production_rate(),
    lambda: desired_wip(),
    "_integ_work_in_process_inventory",
)
