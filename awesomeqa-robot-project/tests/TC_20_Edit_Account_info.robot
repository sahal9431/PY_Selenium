*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/My_Account_page.robot
Resource    ../pages/Suite_setup_and_teardown.robot

Suite Setup    Suite Setup for login page
Suite Teardown    Suite Teardown for Logout

*** Test Cases ***
Edit Account Information
    [Documentation]    This test case verifies the editing of account information.
    [Tags]    P0
    Given Open Edit Account Page
    When Enter Account Information    sergio    Aguero    1234567890
    Then Verify Edit Account Success Message