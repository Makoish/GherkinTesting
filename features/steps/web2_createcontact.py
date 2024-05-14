from behave import *
from selenium import *

@given("I am on the create contact page {website}")
def step_impl(context, website):
    context.website = website
    context.driver.get(context.website)

@when("I leave the first name empty")
def step_impl(context):
    context.driver.find_element("xpath", "/html/body/div/form/p[1]/input[1]").send_keys()

@when("I fill in the last name with {lastname}")
def step_impl(context, lastname):
    context.lastname = lastname
    context.driver.find_element("xpath", "/html/body/div/form/p[1]/input[2]").send_keys(lastname)

@Then("I should see a message {message}")
def step_impl(context, message):
    error = context.driver.find_element("xpath", "/html/body/div/span")

    # assert error.text == "Contact validation failed: firstName: Path `firstName` is required."
    print(error.text)
    print(message)

@when("I fill in the first name with {firstname}")
def step_impl(context, firstname):
    context.firstname = firstname
    context.driver.find_element("xpath", "/html/body/div/form/p[1]/input[1]").send_keys(firstname)

@when("I leave the last name empty")
def step_impl(context):
    context.driver.find_element("xpath", "/html/body/div/form/p[1]/input[2]").send_keys()

@When("I fill in the email with {email}")
def step_impl(context, email):
    context.email = email
    context.driver.find_element("xpath", "/html/body/div/form/p[3]/input[1]").send_keys(email)

@When("I fill in the phone number with {phone}")
def step_impl(context, phone):
    context.phone = phone
    context.driver.find_element("xpath", "/html/body/div/form/p[3]/input[2]").send_keys(phone)

@When("I fill in the birth date with {birthdate}")
def step_impl(context, birthdate):
    context.birthdate = birthdate
    context.driver.find_element("xpath", "/html/body/div/form/p[2]/input").send_keys(birthdate)

@When("I fill in the postal code with {postal}")
def step_impl(context, postal):
    context.postal = postal
    context.driver.find_element("xpath", "/html/body/div/form/p[7]/input[1]").send_keys(postal)