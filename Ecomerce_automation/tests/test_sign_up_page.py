from utils.drivers import get_driver
from pages.login_page import Login_Page
import time

def test_2_sign_up(login_page_fun):
    name = "Leo Messi"
    email = "leomessi107@gmail.com"
    login_page_fun.enter_sign_up_details(name, email)
    time.sleep(5)
    user_data = {
          "password": "Password@123", 
          "day": "18", 
          "month": "12", 
          "year": "2010", 
          "first_name": "Leo", 
          "last_name": "Messi", 
          "company": "LM10", 
          "address": "M.G.Road", 
          "country": "India", 
          "state": "kerala", 
          "city": "Thrissur" , 
          "zipcode": "680017", 
          "mobile_number": "9999999999"}
    login_page_fun.account_creation(user_data)
    assert login_page_fun.account_created_verif()
