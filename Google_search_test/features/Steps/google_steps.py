from behave import given, when, then
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
import time

@given("I am on the Google page")
def initial_step(context):
    context.driver = webdriver.Chrome()
    context.driver.get("https://www.google.com/")
    context.driver.maximize_window()

@when('I search for "{query}"')
def initial_step(context,query):
    search = context.driver.find_element(By.ID, "APjFqb")
    search.send_keys(query)
    search.send_keys(Keys.RETURN)
    time.sleep(5)

@then('I should see "{query}" in the results')
def initial_step(context,query):
    result = context.driver.page_source
    assert query.lower() in result.lower()
    time.sleep(10)
    context.driver.quit()
