import time

from selenium.webdriver.common.keys import Keys
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.service import Service


options = webdriver.ChromeOptions()
options.binary_location = "C:\chrome-win64\chrome.exe"

driver = webdriver.Chrome(service=Service("chromedriver.exe"))
driver.get("https://webdriveruniversity.com/index.html")

driver.find_element("xpath", "/html/body/div[1]/div/div[2]/div[4]/a").click()

driver.switch_to.window(driver.window_handles[1])

driver.find_element("xpath", "/html/body/div/input").send_keys("test1234")
driver.find_element("xpath", "/html/body/div/input").send_keys(Keys.ENTER)


html_list = driver.find_element("xpath", "/html/body/div/ul")
items = html_list.find_elements("tag name", "li")

print(items[-1].text)

time.sleep(100)

driver.quit()


'''

When the enters the website and clicks on the Todo button, it redirects him to another page where he adds a new task
if he adds new task it should be added to him

'''

