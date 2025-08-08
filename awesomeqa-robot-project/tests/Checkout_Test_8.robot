*** Settings ***
Library    SeleniumLibrary
Resource   ../pages/home_page.robot
Resource    ../pages/checkout_page.robot

*** Test Cases ***
Checkout Product Test
    [Documentation]    This test case verifies that a product can be checked out successfully.
    Open Home Page
    Verify Home Page Title    Your Store
    Search for product    MacBook
    Verify Search Result
    Add product to cart
    Click Checkout Button
    Verify_checkout_page