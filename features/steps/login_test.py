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
def step_impl(context, username, password):
    context.username = username
    context.password = password
    context.driver.find_element("xpath", "/html/body/div/div/div[2]/div[1]/div/div/form/div[1]/input").send_keys(username)
    context.driver.find_element("xpath", "/html/body/div/div/div[2]/div[1]/div/div/form/div[2]/input").send_keys(password)
    context.driver.find_element("xpath", "/html/body/div/div/div[2]/div[1]/div/div/form/input").click()
    


@then("the website should open")
def step_impl(context):
    assert context.driver.current_url == "https://www.saucedemo.com/inventory.html"


@then("the website should not open")
def step_impl(context):

    text_box = context.driver.find_element(By.XPATH, "/html/body/div/div/div[2]/div[1]/div/div/form/div[3]/h3")

    assert text_box.text == "Epic sadface: Sorry, this user has been locked out."
    



@Then("the website should print error")
def step_impl(context):
    text_box = context.driver.find_element(By.XPATH, "/html/body/div/div/div[2]/div[1]/div/div/form/div[3]/h3")

    assert text_box.text == "Epic sadface: Username and password do not match any user in this service"

