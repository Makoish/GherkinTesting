from behave import *
from selenium import *

@when("I click on the cart button")
def step_impl(context):
    context.driver.find_element("xpath", "/html/body/div/div/div/div[1]/div[1]/div[3]").click()

@when("I click on the checkout button")
def step_impl(context):
    context.driver.find_element("xpath", "/html/body/div/div/div/div[2]/div/div[2]/button[2]").click()

@when("I enter {first} in the checkout first name field")
def step_impl(context, first):
    context.driver.find_element("xpath", "/html/body/div/div/div/div[2]/div/form/div[1]/div[1]/input").send_keys(first)

@when("I enter {last} in the checkout last name field")
def step_impl(context, last):
    context.driver.find_element("xpath", "/html/body/div/div/div/div[2]/div/form/div[1]/div[2]/input").send_keys(last)

@when("I enter {zip_code} in the checkout zip code field")
def step_impl(context, zip_code):
    context.driver.find_element("xpath", "/html/body/div/div/div/div[2]/div/form/div[1]/div[3]/input").send_keys(zip_code)

@when("I click on the continue button")
def step_impl(context):
    context.driver.find_element("xpath", "/html/body/div/div/div/div[2]/div/form/div[2]/input").click()

@when("I click on the finish button")
def step_impl(context):
    context.driver.find_element("xpath", "/html/body/div/div/div/div[2]/div/div[2]/div[9]/button[2]").click()

@then("The order is completed successfully")
def step_impl(context):
    assert context.driver.find_element("xpath", "/html/body/div/div/div/div[2]/h2").text == "Thank you for your order!"