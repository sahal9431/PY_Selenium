import time
from pages.home_page import Home_Page
from pytest_bdd import scenario, given, then, when

#Common_Steps
@given("the user is on the Rubco Group home page")
def Common_Steps(driver):
    """
    Common steps for the home page tests.
    :param driver: WebDriver instance
    """
    home_page = Home_Page(driver)
    home_page.navigate_to(home_page.URL)

@scenario('../features/home_page.feature', "Verify Home Page Title")
def test_verify_home_page_title():
    """
    Test to verify the title of the home page.
    """
    pass

@then('the page title should be "Buy Mattress and Furniture Online | Kerala state Rubber Co-operative Limited"')
def home_page_title_should_be_rubco(driver):
    """
    Step to verify the page title is "Kerala state Rubber Co-operative Limited".
    :param driver: WebDriver instance
    """
    home_page = Home_Page(driver)
    actual_title = home_page.get_title()
    expected_title = "Buy Mattress and Furniture Online | Kerala state Rubber Co-operative Limited"
    time.sleep(10)  # Optional: Wait for the page to load completely
    assert actual_title == expected_title, f"Expected title: '{expected_title}', Actual title: '{actual_title}'"

@scenario('../features/home_page.feature', "Verify Mattress Category Link")
def test_verify_mattress_category_link():
    """
    Test to verify the Mattress category link on the home page.
    """
    pass
@when('the user clicks on the "Mattress" product category link')
def step_user_clicks_on_mattress_category_link(driver):
    """
    Step to click on the Mattress product category link.
    :param driver: WebDriver instance
    """
    home_page = Home_Page(driver)
    home_page.select_mattress_category()
@then('the page title should contain "Mattress Archives | Rubco Group"')
def step_page_title_should_contain_mattress(driver):
    """
    Step to verify the page title contains "Mattress".
    :param driver: WebDriver instance
    """
    home_page = Home_Page(driver)
    actual_title = home_page.get_title()
    time.sleep(10)
    assert "Mattress Archives | Rubco Group" in actual_title, f"Expected title to contain 'Mattress Archives | Rubco Group', but got '{actual_title}'"
@then('the URL should contain "mattress"')
def step_url_should_contain_mattress(driver):
    """
    Step to verify the URL contains "mattress".
    :param driver: WebDriver instance
    """
    home_page = Home_Page(driver)
    actual_url = home_page.get_current_url()
    assert "mattress" in actual_url, f"Expected URL to contain 'mattress', but got '{actual_url}'"

@scenario('../features/home_page.feature', "Verify Navigation to About Us Page")
def test_verify_about_us_link():
    """
    Test to verify the About Us link on the home page.
    """
    pass

@when('the user clicks on the "About Us" link')
def step_user_clicks_on_about_us_link(driver):
    """
    Step to click on the About Us link.
    :param driver: WebDriver instance
    """
    home_page = Home_Page(driver)
    home_page.select_about_us()
@then('the page title should contain "About Us | Rubco Group"')
def step_page_title_should_contain_about_us(driver):
    """
    Step to verify the page title contains "About Us".
    :param driver: WebDriver instance
    """
    home_page = Home_Page(driver)
    time.sleep(10)
    actual_title = home_page.get_title()
    time.sleep(10)
    assert "About Us | Rubco Group" in actual_title, f"Expected title to contain 'About Us | Rubco Group', but got '{actual_title}'"
@then('the URL should contain "about-us"')
def step_url_should_contain_about_us(driver):
    """
    Step to verify the URL contains "about-us".
    :param driver: WebDriver instance
    """
    home_page = Home_Page(driver)
    actual_url = home_page.get_current_url()
    assert "about-us" in actual_url, f"Expected URL to contain 'about-us', but got '{actual_url}'"    