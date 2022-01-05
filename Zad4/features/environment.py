
from src.PlanetAge import PlanetAge


def before_scenario(context, scenario):
    context.planetAge = PlanetAge()


def after_scenario(context, scenario):
    context.planetAge = None
