from utils.driver_factory import get_driver
from pages.login_page import LoginPage
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC

def login_as_admin(driver):
    driver.get("https://opensource-demo.orangehrmlive.com/web/index.php/auth/login")
    driver.maximize_window()
    login_page = LoginPage(driver)
    login_page.enter_username('Admin')
    login_page.enter_password('admin123')
    login_page.click_login_button()

def select_dropdown_option(driver, option_text):
        wait = WebDriverWait(driver, 10)

        # Wait for dropdown options to appear
        option = wait.until(EC.presence_of_element_located(
            (By.XPATH, f'//div[@role="option" and text()="{option_text}"]')
        ))

        # Scroll into view using JS
        driver.execute_script("arguments[0].scrollIntoView(true);", option)

        # Now wait until it's clickable
        wait.until(EC.element_to_be_clickable(
            (By.XPATH, f'//div[@role="option" and text()="{option_text}"]')
        )).click()