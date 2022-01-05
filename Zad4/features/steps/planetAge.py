from behave import *

use_step_matcher("parse")


@given('Input seconds and planet')
def step_impl(context):
    try:
        context.seconds = int(context.text.split(",")[0])
    except ValueError:
        context.seconds = context.text.split(",")[0]
    context.method = context.text.split(",")[1]


@when('calculate the planet age')
def step_impl(context):
    context.result = context.planetAge.count(context.seconds, context.method)


@then(u'the result is {result:f}')
def step_impl(context, result):
    assert context.result == result


@then(u'the result is {result}')
def step_impl(context, result):
    assert context.result == result
