



from behave import *
from time import sleep
from selenium.webdriver.common.by import By

@when("I click sort by {option}")
def step_impl(context, option):
    if option == "Z-A":
        context.driver.find_element("xpath", "/html/body/div/div/div/div[1]/div[2]/div/span/select/option[2]").click()
    elif option == "low to high":
        context.driver.find_element("xpath", "/html/body/div/div/div/div[1]/div[2]/div/span/select/option[3]").click()
    elif option == "high to low":
        context.driver.find_element("xpath", "/html/body/div/div/div/div[1]/div[2]/div/span/select/option[4]").click() 
      





@then("the text box should be changed to {name}")
def step_impl(context, name):
    text_box = context.driver.find_element(By.XPATH, "/html/body/div/div/div/div[1]/div[2]/div/span/span")
    assert text_box.text == name



@then("error message should pop saying {error_message}")
def step_impl(context, error_message):
    text_box = context.driver.switch_to.alert
    assert text_box.text == error_message

    