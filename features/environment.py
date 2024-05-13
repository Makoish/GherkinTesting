from behave import *
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
import re


def before_scenario(context, scenario):
    driver = webdriver.Chrome()
    context.driver = driver

def after_scenario(context, scenario):
        exist = re.search("add item \d to cart as \w+", scenario.name) ## this means you have clicked a button
        if exist:
            number = re.search("add item (\d) to cart as \w+", scenario.name).group(1)
            context.driver.find_element("xpath", f"/html/body/div/div/div/div[2]/div/div/div/div[{number}]/div[2]/div[2]/button").click()

        context.driver.quit()