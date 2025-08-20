*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/home_page.robot
Resource    ../pages/login_page.robot
Resource    ../pages/newsletter_page.robot
Resource    ../pages/Suite_setup_and_teardown.robot

Suite Setup    Suite Setup for login page
Suite Teardown    Suite Teardown for Logout

*** Test Cases ***
Subscribe to newsletter
    [Documentation]    This test case verifies the subscription to the newsletter.
    [Tags]    P0
    Given Select newsletter option
    And User Subscribes to Newsletter

Unsubscribe from newsletter
    [Documentation]    This test case verifies the unsubscription from the newsletter.
    [Tags]    P0
    Given Select newsletter option
    And User Unsubscribes from Newsletter