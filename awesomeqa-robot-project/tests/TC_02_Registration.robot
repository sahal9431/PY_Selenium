*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/register_page.robot
Resource    ../pages/home_page.robot

*** Test Cases ***
Registration Test Case
    [Documentation]    This test case verifies the registration functionality of the application.
    [Tags]    P1
    Given Open Home Page
    And Verify Home Page Title    Your Store
    And Open Register Page
    When Enter registration details
    And Click Continue Button
    When Verify Registration Success