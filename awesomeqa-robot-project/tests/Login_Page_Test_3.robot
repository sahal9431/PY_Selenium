*** Settings ***
Library    SeleniumLibrary
Resource   ../variables/variables.robot
Resource   ../pages/login_page.robot
Resource   ../pages/home_page.robot

*** Test Cases ***
User Logs In With Valid Credentials
    Given Open Home Page
    And Verify Home Page Title    Your Store
    And Open Login Page
    When Enter Login Credentials
    And Click login Button
    Then Verify Login Successful