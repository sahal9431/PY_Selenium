*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/home_page.robot
Resource    ../pages/checkout_page.robot

*** Test Cases ***
Checkout Product with new user Test
    [Documentation]    This test case verifies that a product can be checked out successfully with new user.
    Given Open Home Page
    And Verify Home Page Title    Your Store
    And Search for product    MacBook
    And Verify Search Result
    And Add product to cart
    When Click Checkout Button
    Then Verify_checkout_page
    And Select Checkout Page Register Account Radio Button
    And Fill Checkout Page Register Form