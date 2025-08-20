*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/Suite_setup_and_teardown.robot
Resource    ../pages/oder_history_page.robot

Suite Setup    Suite Setup for login page
Suite Teardown    Suite Teardown for Logout

*** Test Cases ***
Check Empty Order History
    [Documentation]    Verify that empty order history shows proper message.
    [Tags]    P0
    Given Open oder History Page
    When Verify Empty Order History Message