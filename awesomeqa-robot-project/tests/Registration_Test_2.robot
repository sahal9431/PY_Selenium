*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/register_page.robot
Resource    ../pages/home_page.robot

*** Test Cases ***
Registration Test Case
    [Documentation]    This test case verifies the registration functionality of the application.
    Open Home Page
    Verify Home Page Title    Your Store
    Open Register Page
    Enter registration details
    Click Continue Button
    Verify Registration Success