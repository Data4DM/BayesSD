"""
Python model 'alpha.py'
Translated using PySD
"""

from pathlib import Path
import numpy as np

from pysd.py_backend.statefuls import Integ
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


@component.add(name="adjustment time", comp_type="Constant", comp_subtype="Normal")
def adjustment_time():
    return 3


@component.add(
    name="alpha desired price",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"fundamental_value": 1, "arbitrage_value": 1},
)
def alpha_desired_price():
    return fundamental_value() + arbitrage_value()


@component.add(name="arbitrage value", comp_type="Constant", comp_subtype="Normal")
def arbitrage_value():
    return 1


@component.add(name="fundamental value", comp_type="Constant", comp_subtype="Normal")
def fundamental_value():
    return 1


@component.add(
    name="price",
    comp_type="Stateful",
    comp_subtype="Integ",
    depends_on={"_integ_price": 1},
    other_deps={"_integ_price": {"initial": {}, "step": {"price_adjustment_rate": 1}}},
)
def price():
    return _integ_price()


_integ_price = Integ(lambda: price_adjustment_rate(), lambda: 0, "_integ_price")


@component.add(
    name="price adjustment rate",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"price_discrepancy": 1, "adjustment_time": 1},
)
def price_adjustment_rate():
    return price_discrepancy() / adjustment_time()


@component.add(
    name="price discrepancy",
    comp_type="Auxiliary",
    comp_subtype="Normal",
    depends_on={"alpha_desired_price": 1, "price": 1},
)
def price_discrepancy():
    return alpha_desired_price() - price()
