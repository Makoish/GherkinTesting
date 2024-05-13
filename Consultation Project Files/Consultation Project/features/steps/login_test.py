from behave import *

@given("I have internet connection")
def step_impl(context):
    pass

@when("I open the website {website}")
def step_impl(context, website):
    context.website = website
    context.driver.get(context.website)

@then("The site opens")
def step_impl(context):
    assert context.driver.current_url == context.website
