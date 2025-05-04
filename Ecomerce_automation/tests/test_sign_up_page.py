from utils.drivers import get_driver
from pages.login_page import Login_Page
import time

def test_2_signup(login_page_fun):
    name = "Leo Messi"
    email = "leomessi107@gmail.com"
    login_page_fun.enter_sign_up_details(name, email)