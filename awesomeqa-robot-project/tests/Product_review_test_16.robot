*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/home_page.robot
Resource    ../pages/login_page.robot
Resource    ../pages/Product_details_page.robot

*** Test Cases ***
Product review submission test case
    [Documentation]    This test case verifies the product review submission functionality.
    Given Open Home Page
    And Verify Home Page Title    Your Store
    When Open Login Page
    And Enter Login Credentials
    And Click login Button
    Then Verify Login Successful
    And Click on Home button in My Account page
    And Open Product detailes page from home page    MacBook
    And Select review tab
    And Enter review details    John Doe    3
    And Verify review submission