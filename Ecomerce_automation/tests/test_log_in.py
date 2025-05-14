from utils.drivers import get_driver
from pages.login_page import Login_Page

def test_3_log_in(login_page_fun):
    email = "leomessi107@gmail.com"
    password =  "Password@123"
    login_page_fun.log_in_acount(email, password)
    login_page_fun.log_out_account()