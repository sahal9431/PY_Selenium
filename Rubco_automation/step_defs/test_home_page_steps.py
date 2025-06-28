from pages.home_page import Home_Page
from pytest_bdd import scenario, given, then

@scenario('../features/home_page.feature', "Verify Home Page Title")
def test_verify_home_page_title():
    """
    Test to verify the title of the home page.
    """
    pass
@given("the user navigates to the Rubco Group website")
def step_user_navigates_to_rubco_group_website(driver):
    """
    Step to navigate to the Rubco Group website.
    :param driver: WebDriver instance
    """
    home_page = Home_Page(driver)
    home_page.navigate_to(home_page.URL)
@then('the page title should be "Buy Mattress and Furniture Online | Kerala state Rubber Co-operative Limited"')
def home_page_title_should_be_rubco(driver):
    """
    Step to verify the page title is "Kerala state Rubber Co-operative Limited".
    :param driver: WebDriver instance
    """
    home_page = Home_Page(driver)
    actual_title = home_page.get_title()
    expected_title = "Buy Mattress and Furniture Online | Kerala state Rubber Co-operative Limited"
    assert actual_title == expected_title, f"Expected title: '{expected_title}', Actual title: '{actual_title}'"