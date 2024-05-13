from behave import *
from time import sleep
from selenium.webdriver.common.by import By

@given("I have internet connection")
def step_impl(context):
    pass

@when("I open the website {website}")
def step_impl(context, website):
    context.website = website
    context.driver.get(context.website)

@when("I enter username and password {username} {password}")