
from behave import *
from time import sleep
from selenium.webdriver.common.by import By

@when("I click remove for button {number}")
def step_impl(context, number):
    context.driver.find_element("xpath", f"/html/body/div/div/div/div[2]/div/div/div/div[{number}]/div[2]/div[2]/button").click()



















    

