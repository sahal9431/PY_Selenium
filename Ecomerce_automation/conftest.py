import pytest
from utils.drivers import get_driver
from pages.home_page import HomePage
from pages.login_page import Login_Page
from config import BASE_URL
import time

@pytest.fixture
def driver():
    driver = get_driver()
    yield driver
    driver.quit()

@pytest.fixture
def home_page(driver):
    driver.get(BASE_URL)
    driver.maximize_window()
    time.sleep(5)
    return HomePage(driver)
    time.sleep(5)

@pytest.fixture
def login_page_fun(driver):
    driver.get(BASE_URL)
    driver.maximize_window()
    time.sleep(5)
    driver.execute_script("window.scrollTo(0, 0);")
    time.sleep(5)
    L_page = Login_Page(driver)
    L_page.go_to_signup_login_page()
    return L_page