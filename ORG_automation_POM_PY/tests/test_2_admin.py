from utils.driver_factory import get_driver
from pages.admin_page import AdminPage
from utils.common import login_as_admin

def test_2_admin_page(driver):
    login_as_admin(driver)
    Admin = AdminPage(driver)
    Admin.select_admin_tab()
    assert Admin.verfy_user_management_page, "Admin/User Management page not visible"