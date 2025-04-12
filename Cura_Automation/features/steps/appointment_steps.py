from behave import when, then
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from webdriver_manager.chrome import ChromeDriverManager
import time
from selenium.webdriver.support.ui import WebDriverWait


@when('I fill the appointment form with valid details')
def Vaild_appoinment_details(context):
    drop_down = context.driver.find_element(By.ID, 'combo_facility')
    drop_down.click()
    drop_down.find_element(By.XPATH, '/html/body/section/div/div/form/div[1]/div/select/option[3]').click()
    context.driver.find_element(By.ID, 'chk_hospotal_readmission').click()
    context.driver.find_element(By.ID, 'radio_program_medicare').click()
    context.driver.find_element(By.ID, 'txt_visit_date').send_keys("24/04/2025")
    context.driver.find_element(By.ID, 'txt_comment').send_keys("To Book Appoinment")
    context.driver.find_element(By.ID, 'btn-book-appointment').click()

@then('I should see the confirmation page')
def validate_appoinment(context):
    heading = context.driver.find_element(By.XPATH, '/html/body/section/div/div/div[1]/h2').text
    assert 'Appointment Confirmation' in heading

@when('I click on menu and go to "{section}"')
def menu_section(context, section):
    context.driver.find_element(By.ID, 'menu-toggle').click()
    time.sleep(5)
    if section == "History":
        context.driver.find_element(By.LINK_TEXT, 'History').click()
        time.sleep(5)
    elif section == "Profile":
        context.driver.find_element(By.LINK_TEXT, 'Profile').click()
        time.sleep(5)
    elif section == "logout":
        context.driver.find_element(By.LINK_TEXT, 'Logout').click()
        time.sleep(5)

@then('I should see the "{section}" page')
def history_page(context, section):
    WebDriverWait(context.driver, 10).until(EC.visibility_of_element_located((By.XPATH, "/html/body/section/div/div[1]/div/h2")))
    if section == "History":
        assert "History" in context.driver.page_source
    elif section == "Profile":
        assert "Profile" in context.driver.page_source
