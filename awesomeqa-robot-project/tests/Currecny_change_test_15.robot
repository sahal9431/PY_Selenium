*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/home_page.robot

*** Test Cases ***
Currency Change Test Case
    [Documentation]    This test case verifies the currency change functionality.
    Given Open Home Page
    And Verify Home Page Title    Your Store
    And select currency dropdown
    When select currency option    Euro
    Then Verify Currency Change    €
    And select currency dropdown
    When select currency option    Pound
    Then Verify Currency Change    £
    And select currency dropdown
    When select currency option    Dollar
    Then Verify Currency Change    $