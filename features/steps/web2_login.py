from behave import *
from selenium import *

@given("the user is on the login page {website}")
def step_impl(context, website):
    context.website = website
    context.driver.get(context.website)

@when("the user enters the email {email}")
def step_impl(context, email):
    context.email = email
    if email == "''":
        context.driver.find_element("xpath", "/html/body/div[3]/form/p[1]/input").send_keys()
    else:
        context.driver.find_element("xpath", "/html/body/div[3]/form/p[1]/input").send_keys(email)

@when("the user enters the password {password}")
def step_impl(context, password):
    context.password = password
    if password == "''":
        context.driver.find_element("xpath", "/html/body/div[3]/form/p[2]/input").send_keys()
    else:
        context.driver.find_element("xpath", "/html/body/div[3]/form/p[2]/input").send_keys(password)

@when("the user clicks the submit button")
def step_impl(context):
    context.driver.find_element("xpath", "/html/body/div[3]/form/p[3]/button").click()

@then("the user should see an error message {message}")
def step_impl(context, message):
    message = context.driver.find_element("xpath", "/html/body/div[3]/span")
    if message == "''":
        print("no message")
    elif message == "Incorrect username or password":
        print("Incorrect username or password")

@then("the user should be directed to the contact list page {website}")
def step_impl(context, website):
    #assert context.driver.current_url == website
    # fill current_url with the actual url of the website
    current_url =context.driver.get(website)
    if current_url == website:
        print("logged in successfully")
    else:
        print("login failed")
    


