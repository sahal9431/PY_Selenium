from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC # Add this back if removed
from selenium.webdriver.common.by import By # Add this back if removed
from selenium.common.exceptions import TimeoutException

class BasePage(): # <-- CHANGE THIS from Base_Page to BasePage
    def __init__(self, driver):
        self.driver = driver
        self.wait = WebDriverWait(driver, 10)

    # Add the navigate_to method back as I originally provided it
    def navigate_to(self, url): # <-- ADD THIS METHOD
        """Navigates the browser to the given URL."""
        self.driver.get(url)

    def get_title(self):
        return self.driver.title

    def get_current_url(self): # Renamed get_url to get_current_url for clarity, matches original
        """Returns the current page URL."""
        return self.driver.current_url

    def find_element(self, locator): # Renamed get_element to find_element, matches original
        """Waits for and returns a single web element."""
        try:
            return self.wait.until(EC.presence_of_element_located(locator))
        except TimeoutException:
            raise TimeoutException(f"Element with locator {locator} not found within the timeout period.")

    def click_element(self, locator):
        """Waits for element to be clickable and clicks it."""
        element = self.wait.until(EC.element_to_be_clickable(locator)) # Use wait here
        element.click()

    def enter_text(self, locator, text):
        """Enters text into an input field."""
        element = self.find_element(locator) # Use find_element
        element.clear()
        element.send_keys(text)