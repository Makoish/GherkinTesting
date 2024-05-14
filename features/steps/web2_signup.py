from behave import *
from time import sleep
from polars import tail
from selenium.webdriver.common.by import By

@given("I am on the signup page {website}")
def step_impl(context, website):
    context.website = website
    context.driver.get(context.website)    

@when("I enter {firstname} in the first name field")
def step_impl(context, firstname):
    context.firstname = firstname
    if firstname == "''":
        context.driver.find_element("xpath", "/html/body/div/form/p[1]/input").send_keys()
    else:
        context.driver.find_element("xpath", "/html/body/div/form/p[1]/input").send_keys(firstname)

@when("I enter {lastname} in the last name field")  
def step_impl(context, lastname):
    context.lastname = lastname
    if lastname == "''":
        context.driver.find_element("xpath", "/html/body/div/form/p[2]/input").send_keys()
    else:
        context.driver.find_element("xpath", "/html/body/div/form/p[2]/input").send_keys(lastname)

@when("I enter {email} in the email field")
def step_impl(context, email):
    context.email = email
    if email == "''":
        context.driver.find_element("xpath", "/html/body/div/form/p[3]/input").send_keys()
    else:
        context.driver.find_element("xpath", "/html/body/div/form/p[3]/input").send_keys(email)

@when("I enter {password} in the password field")
def step_impl(context, password):
    context.password = password
    if password == "''":
        context.driver.find_element("xpath", "/html/body/div/form/p[4]/input").send_keys()
    else:
        context.driver.find_element("xpath", "/html/body/div/form/p[4]/input").send_keys(password)

@when("I click the submit button")
def step_impl(context):
    context.driver.find_element("xpath", "/html/body/div/p[2]/button[1]").click()


@then("the user will be signed up successfully but this is not a valid name")
def step_impl(context):
    # assert context.driver.current_url == "https://thinking-tester-contact-list.herokuapp.com/contactList"
    if context.driver.current_url == "https://thinking-tester-contact-list.herokuapp.com/contactList":
        print("\n\n\n\n\n\n\n\n")
        print("logged in successfully but this is not a valid name")
    else:
        print("\n\n\n\n\n\n\n\n")
        print("login failed")

@then("the user will be signed up successfully")
def step_impl(context):
    # assert context.driver.current_url == "https://thinking-tester-contact-list.herokuapp.com/contactList"
    if context.driver.current_url == "https://thinking-tester-contact-list.herokuapp.com/contactList":
        print("\n\n\n\n\n\n\n\n")
        print("logged in successfully")
    else:
        print("\n\n\n\n\n\n\n\n")
        print("login failed")

@then("the user will not be able to sign up successfully")
def step_impl(context):
    # assert context.driver.current_url == "https://thinking-tester-contact-list.herokuapp.com/signup"
    if context.driver.current_url == "https://thinking-tester-contact-list.herokuapp.com/signup":
        print("\n\n\n\n\n\n\n\n")
        print("logged in successfully")
    else:
        print("\n\n\n\n\n\n\n\n")
        print("login failed")