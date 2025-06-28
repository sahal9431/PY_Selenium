from pages.base_page import BasePage
class Home_Page(BasePage):
    URL = "https://www.rubcogroup.com/"


    def __init__(self, driver):
        super().__init__(driver)
