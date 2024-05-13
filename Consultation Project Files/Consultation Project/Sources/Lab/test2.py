import time

from selenium.webdriver.common.keys import Keys
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.service import Service


options = webdriver.ChromeOptions()
options.binary_location = "C:\chrome-win64\chrome.exe"

driver = webdriver.Chrome(service=Service("chromedriver.exe"))
driver.get("https://webdriveruniversity.com/index.html")

driver.maximize_window()



driver.find_element("xpath", "/html/body/div[1]/div/div[2]/div[2]/a").click()


driver.switch_to.window(driver.window_handles[1])

driver.find_element("xpath", "/html/body/div/div/form/input[1]").send_keys("ahmed@yahoo.com")
driver.find_element("xpath", "/html/body/div/div/form/input[2]").send_keys("lol123")
driver.find_element("xpath", "/html/body/div/div/form/button").click()

print(driver.switch_to.alert.text)
time.sleep(10)

driver.quit()


'''

When the enters the website and clicks on the login button, it redirects him to another page where he adds the username and password then clicks on the login button it displays the alert "validation failed"

'''

