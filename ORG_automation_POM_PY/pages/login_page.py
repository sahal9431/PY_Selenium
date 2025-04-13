from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time


class LoginPage:
    def __init__(self, driver):
        self.driver = driver
        self.wait = WebDriverWait(self.driver, 10)

        self.username = (By.XPATH, '//input[@name="username"]')
        self.password = (By.XPATH, '//input[@name="password"]')
        self.login_button = (By.XPATH, '/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button')
        self.login_verify = (By.XPATH, '/html/body/div/div[1]/div[1]/header/div[1]/div[1]/span/h6')

    def enter_username(self, username):
        self.wait.until(EC.visibility_of_element_located(self.username)).send_keys(username)
        time.sleep(5)

    
    def enter_password(self, password):
        self.wait.until(EC.visibility_of_element_located(self.password)).send_keys(password)
        time.sleep(5)

    def click_login_button(self):
        self.wait.until(EC.visibility_of_element_located(self.login_button)).click()
        time.sleep(5)
    def successful_login(self):
        return self.wait.until(EC.visibility_of_element_located(self.login_verify)).is_displayed()