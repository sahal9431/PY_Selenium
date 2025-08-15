*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/home_page.robot
Resource    ../pages/login_page.robot

*** Keywords ***
Suite Setup for home page
    [Documentation]    Opens the home page and verifies the title.
    Open Home Page
    Verify Home Page Title    Your Store

Suite Setup for login page
    [Documentation]    Opens the login page and logs in with valid credentials.
    Suite Setup for home page
    Open Login Page
    Enter Login Credentials
    Click login Button
    Verify Login Successful