from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time

class AdminPage:
    def __init__(self, driver):
        self.driver = driver
        self.wait = WebDriverWait(self.driver, 10)

        self.admin_tab = (By.XPATH, '/html/body/div/div[1]/div[1]/aside/nav/div[2]/ul/li[1]/a/span')
        self.user_management_tab = (By.XPATH, '/html/body/div/div[1]/div[1]/header/div[1]/div[1]/span')

    def select_admin_tab(self):
        self.wait.until(EC.visibility_of_element_located(self.admin_tab)).click()
        time.sleep(5)

    def verfy_user_management_page(self):
        return self.wait.until(EC.visibility_of_element_located(self.user_management_tab)).is_displayed()