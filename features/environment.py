from behave import *
from selenium import webdriver
from selenium.webdriver.chrome.service import Service


def before_scenario(context, scenario):
    driver = webdriver.Chrome()
    context.driver = driver

def after_scenario(context, scenario):
    context.driver.quit()