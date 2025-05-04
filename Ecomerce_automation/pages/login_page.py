from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time

class Login_Page():
    def __init__(self, driver):
        self.driver = driver
        self.wait = WebDriverWait(driver, 10)
        self.login_button = (By.XPATH, '//a[contains(text()," Signup / Login")]')
        self.login_page_verify = (By.XPATH, '//h2[contains(text(),"New User Signup!")]')
        self.sign_up_name = (By.XPATH, '//input[@data-qa="signup-name"]')
        self.sig_up_email = (By.XPATH, '//input[@data-qa="signup-email"]')
        self.sign_up_button = (By.XPATH, '//button[@data-qa="signup-button"]')

        #Creating Account
        title_gender = (By.ID, "id_gender1")
        password = (By.ID, "password")
        days = (By.ID, "days")
        months = (By.ID, "months")
        years = (By.ID, "years")

        news_letter = (By.ID, "newsletter")
        offer = (By.ID, "optin")
    
    def go_to_signup_login_page(self):
        self.wait.until(EC.element_to_be_clickable(self.login_button)).click()
    
    def enter_sign_up_details(self, name, email):
        self.wait.until(EC.visibility_of_element_located(self.sign_up_name)).send_keys(name)
        self.wait.until(EC.visibility_of_element_located(self.sig_up_email)).send_keys(email)
        time.sleep(5)
        self.wait.until(EC.element_to_be_clickable(self.sign_up_button)).click()
        time.sleep(5)
        