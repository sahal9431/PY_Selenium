*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/home_page.robot
Resource    ../pages/cart_page.robot

**** Test Cases ***
View Product In Cart Test
    [Documentation]    This test case verifies that a product can be added to the cart and viewed correctly.
    Open Home Page
    Verify Home Page Title    Your Store
    Search for product    MacBook
    Verify Search Result
    Add product to cart
    open cart section
    Verify product in cart