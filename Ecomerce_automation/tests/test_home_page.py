from utils.drivers import get_driver
from pages.home_page import HomePage
import time

def test_1_home_page(home_page):
    assert home_page.is_logo_displayed()
