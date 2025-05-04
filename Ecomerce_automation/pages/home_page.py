from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time


class HomePage():
    def __init__(self, driver):
        self.driver = driver
        self.wait = WebDriverWait(driver, 10)
        self.logo = (By.XPATH, "//img[@alt='Website for automation practice']")
    
    def is_logo_displayed(self):
        logo = self.wait.until(EC.visibility_of_element_located(self.logo))
        return logo.is_displayed()