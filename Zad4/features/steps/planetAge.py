from behave import *

use_step_matcher("parse")


@given('Input seconds and planet (string)')
def step_impl(context):
    try:
        context.seconds = int(context.text.split(",")[0])
    except ValueError:
        context.seconds = context.text.split(",")[0]
    context.method = context.text.split(",")[1]


@given('Input seconds and planet (and)')
def step_impl(context):
    context.seconds = None
    context.method = None


@given('seconds {seconds:d}')
def step_impl(context, seconds):
    context.seconds = seconds


@given('seconds {seconds}')
def step_impl(context, seconds):
    context.seconds = seconds


@given('planet {method}')
def step_impl(context, method):
    context.method = method


@when('calculate the planet age')
def step_impl(context):
    context.result = context.planetAge.count(context.seconds, context.method)


@then(u'the result is {result:f}')
def step_impl(context, result):
    assert context.result == result


@then(u'the result is {result}')
def step_impl(context, result):
    assert context.result == result
