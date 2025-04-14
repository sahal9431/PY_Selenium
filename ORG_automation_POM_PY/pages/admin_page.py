from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from utils.common import select_dropdown_option
import time

class AdminPage:
    def __init__(self, driver):
        self.driver = driver
        self.wait = WebDriverWait(self.driver, 10)

        self.admin_tab = (By.XPATH, '/html/body/div/div[1]/div[1]/aside/nav/div[2]/ul/li[1]/a/span')
        self.user_management_tab = (By.XPATH, '/html/body/div/div[1]/div[1]/header/div[1]/div[1]/span')

        #search for User
        self.search_for_user_input = (By.XPATH, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[1]/div/div[2]/input')
        self.click_search_button = (By.XPATH, '/html/body/div/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[2]/button[2]')

        #Add user
        self.click_add_button = (By.XPATH, '//button[text()=" Add "]')
        self.user_role_dropdown = (By.CSS_SELECTOR, 'div.oxd-form-row:nth-child(1) .oxd-select-text')
        self.enter_employee_name = (By.XPATH, '/html/body/div/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[2]/div/div[2]/div/div/input')
        self.status_dropdown = (By.CSS_SELECTOR, 'div.oxd-form-row:nth-child(3) .oxd-select-text')
        self.enter_username = (By.XPATH, '/html/body/div/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[4]/div/div[2]/input')
        self.enter_password = (By.XPATH, '/html/body/div/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[1]/div/div[2]/input')
        self.enter_confirm_password = (By.XPATH, '/html/body/div/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[1]/div/div[2]/input')
        self.click_save_button = (By.XPATH, '//button[@type="submit"]')

    def select_admin_tab(self):
        self.wait.until(EC.visibility_of_element_located(self.admin_tab)).click()
        time.sleep(5)

    def verfy_user_management_page(self):
        return self.wait.until(EC.visibility_of_element_located(self.user_management_tab)).is_displayed()
    
    def search_user(self, username):
        self.wait.until(EC.visibility_of_element_located(self.search_for_user_input)).send_keys(username)
        self.driver.find_element(*self.click_search_button).click()
        time.sleep(5)

    def add_user(self, employee_name, new_username, password):
        self.driver.find_element(*self.click_add_button).click()
        self.wait.until(EC.visibility_of_element_located(self.user_role_dropdown)).click()
        time.sleep(2)
        #self.driver.find_element(By.XPATH, '//div[@role="option" and text()="ESS"]').click()
        #self.wait.until(EC.element_to_be_clickable((By.XPATH, '//div[@role="option" and text()="ESS"]'))).click()
        select_dropdown_option(self.driver, "ESS")
        self.wait.until(EC.visibility_of_element_located(self.enter_employee_name)).send_keys(employee_name)
        self.wait.until(EC.visibility_of_element_located(self.status_dropdown)).click()
        time.sleep(2)
        select_dropdown_option(self.driver, "Enabled")
        #self.wait.until(EC.element_to_be_clickable((By.XPATH, '//div[@role="option" and text()="Enabled"]'))).click()
        self.wait.until(EC.visibility_of_element_located(self.enter_username)).send_keys(new_username)
        self.wait.until(EC.visibility_of_element_located(self.enter_password)).send_keys(password)
        self.wait.until(EC.visibility_of_element_located(self.enter_confirm_password)).send_keys(password)
        self.driver.find_element(self.click_save_button).click()

