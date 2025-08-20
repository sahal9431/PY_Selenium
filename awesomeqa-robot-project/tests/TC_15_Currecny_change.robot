*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/home_page.robot
Resource    ../pages/Suite_setup_and_teardown.robot

Suite Setup    Suite Setup for home page
*** Test Cases ***
Currency Change Test Case
    [Documentation]    This test case verifies the currency change functionality.
    [Tags]    P0
    Given select currency dropdown
    When select currency option    Euro
    Then Verify Currency Change    €
    And select currency dropdown
    When select currency option    Pound
    Then Verify Currency Change    £
    And select currency dropdown
    When select currency option    Dollar
    Then Verify Currency Change    $