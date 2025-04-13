from utils.driver_factory import get_driver
from pages.login_page import LoginPage
from utils.common import login_as_admin

def test_1_login():
    driver = get_driver()
    login_page = LoginPage(driver)
    login_as_admin(driver)
    assert login_page.successful_login(), "Login failed – Dashboard not visible."