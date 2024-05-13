from behave import *
from time import sleep
from selenium.webdriver.common.by import By



@when("I click on button number {number}")
def step_impl(context, number):
    context.driver.find_element("xpath", f"/html/body/div/div/div/div[2]/div/div/div/div[{number}]/div[2]/div[2]/button").click()




@then("the cart number should be 1")
def step_impl(context):
    cart_badge = context.driver.find_element("xpath", "/html/body/div/div/div/div[1]/div[1]/div[3]/a/span")
    assert cart_badge.text == "1"




@then("the cart number should be 0")
def step_impl(context):
    try:
        cart_badge = context.driver.find_element("xpath", "/html/body/div/div/div/div[1]/div[1]/div[3]/a/span")
    except:
        assert True == True

    else:
        assert True == False








    


