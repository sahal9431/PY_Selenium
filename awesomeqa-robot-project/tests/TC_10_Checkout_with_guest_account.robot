*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/home_page.robot
Resource    ../pages/checkout_page.robot

*** Test Cases ***
Checkout using guest account Test
    [Documentation]    This test case verifies that a product can be checked out successfully using a guest account.
    [Tags]    P0
    Given Open Home Page
    And Verify Home Page Title    Your Store
    And Search for product    MacBook
    And Verify Search Result
    And Add product to cart
    When Click Checkout Button
    Then Verify_checkout_page
    And Select guest checkout Radio Button
    And Fill Checkout Page Guest Form