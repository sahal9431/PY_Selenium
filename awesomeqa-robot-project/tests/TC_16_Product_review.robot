*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/home_page.robot
Resource    ../pages/login_page.robot
Resource    ../pages/Product_details_page.robot
Resource    ../pages/Suite_setup_and_teardown.robot

Suite Setup    Suite Setup for login page
Suite Teardown    Suite Teardown for Logout

*** Test Cases ***
Product review submission test case
    [Documentation]    This test case verifies the product review submission functionality.
    [Tags]    P0
    Given Click on Home button in My Account page
    And Open Product detailes page from home page    MacBook
    And Select review tab
    And Enter review details    John Doe    3
    And Verify review submission