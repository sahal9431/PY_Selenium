from utils.driver_factory import get_driver
from pages.admin_page import AdminPage
from utils.common import login_as_admin

def test_2_admin_page(driver):
    login_as_admin(driver)
    Admin = AdminPage(driver)
    Admin.select_admin_tab()
    assert Admin.verfy_user_management_page, "Admin/User Management page not visible"

def test_search_user(driver):
    login_as_admin(driver)
    Admin = AdminPage(driver)
    Admin.select_admin_tab()
    Admin.search_user("Jeevan")
    assert "Jeevan" in driver.page_source

def test_add_user(driver):
    login_as_admin(driver)
    Admin = AdminPage(driver)
    Admin.select_admin_tab()
    Admin.add_user("leo Messi", "leo", "Leo@2022")
