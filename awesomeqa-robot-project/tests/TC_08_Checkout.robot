*** Settings ***
Library    SeleniumLibrary
Resource   ../pages/home_page.robot
Resource    ../pages/checkout_page.robot

*** Test Cases ***
Checkout Product Test
    [Documentation]    This test case verifies that a product can be checked out successfully.
    [Tags]    P0
    Given Open Home Page
    And Verify Home Page Title    Your Store
    And Search for product    MacBook
    And Verify Search Result
    And Add product to cart
    When Click Checkout Button
    Then Verify_checkout_page