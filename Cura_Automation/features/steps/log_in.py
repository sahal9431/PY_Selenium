from behave import given, when, then
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from webdriver_manager.chrome import ChromeDriverManager
import time
from steps.common_step import load_home_page


@when('I login with username "{username}" and password "{password}"')
def login_steps(context, username, password):
    context.driver.find_element(By.ID, "txt-username").send_keys(username)
    context.driver.find_element(By.ID, "txt-password").send_keys(password)
    time.sleep(5)
    context.driver.find_element(By.ID, "btn-login").click()
    time.sleep(5)

@then('I should see "Make Appointment"')
def login_veryfication(context):
    assert "Make Appointment" in context.driver.page_source

@then('I should see an error message')
def invalid_login(context):
    error_message = context.driver.find_element(By.XPATH, '//*[@id="login"]/div/div/div[1]/p[2]').text
    assert "Login failed!" in error_message

@given('I log in to CURA with valid credentials')
def valid_login(context):
    load_home_page(context)
    login_steps(context, "John Doe", "ThisIsNotAPassword")

@then("I should see the Login page again")
def step_check_login_page(context):
    assert "Login" in context.driver.page_source
