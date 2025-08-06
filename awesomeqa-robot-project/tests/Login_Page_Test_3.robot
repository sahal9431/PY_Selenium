*** Settings ***
Library    SeleniumLibrary
Resource   ../variables/variables.robot
Resource   ../pages/login_page.robot
Resource   ../pages/home_page.robot

*** Test Cases ***
User Logs In With Valid Credentials
    Open Home Page
    Verify Home Page Title    Your Store
    Open Login Page
    Enter Login Credentials
    Click login Button
    Verify Login Successful