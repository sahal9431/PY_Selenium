import pytest
from utils.driver import get_chrome_driver, quit_driver

@pytest.fixture(scope='function')
def driver():
    """
    Pytest fixture that provides a WebDriver instance for each test function.
    It initializes the driver before the test and quits it after the test.
    """
    chrome_driver = get_chrome_driver()
    yield chrome_driver  # This is where the test runs
    quit_driver(chrome_driver) # This runs after the test completes