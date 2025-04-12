from behave import given, when, then
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from webdriver_manager.chrome import ChromeDriverManager
import time

@given("I open the CURA homepage")
def load_home_page(context):
    context.driver = webdriver.Chrome()
    context.driver.maximize_window()
    context.driver.get("https://katalon-demo-cura.herokuapp.com/")
    context.driver.find_element(By.ID, "btn-make-appointment").click()
    time.sleep(10)

@then('I should see "CURA Healthcare Service" in title')
def check_home_page(context):
    assert "CURA Healthcare Service" in context.driver.title
    