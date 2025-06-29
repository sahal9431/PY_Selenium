from pages.base_page import BasePage
from selenium.webdriver.common.by import By

class Home_Page(BasePage):
    URL = "https://www.rubcogroup.com/"
    Matress_Category_Link = (By.LINK_TEXT, "Mattress")
    About_Us_Link = (By.LINK_TEXT, "About Us")


    def __init__(self, driver):
        super().__init__(driver)

    def select_mattress_category(self):
        """
        Clicks on the Mattress category link.
        """
        self.click_element(self.Matress_Category_Link)

    def select_about_us(self):
        """
        Clicks on the About Us link.
        """
        self.click_element(self.About_Us_Link)
