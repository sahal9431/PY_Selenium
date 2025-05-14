from utils.drivers import get_driver
from pages.product_page import ProductPage
from config import BASE_URL
from config import USER_DETAILS

def Test_4_Odering_product(driver, ProductPage):
    driver.get(BASE_URL)
    driver.maximize_window()
    ProductPage.add_product_to_cart(name=USER_DETAILS["name"],
        card=USER_DETAILS["card"],
        cvc=USER_DETAILS["cvc"],
        month=USER_DETAILS["expiry_month"],
        year=USER_DETAILS["expiry_year"])
    