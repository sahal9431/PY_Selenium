*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/home_page.robot
Resource    ../pages/cart_page.robot

*** Test Cases ***
Remove Product From Cart Test
    [Documentation]    This test case verifies that a product can be removed from the cart.
    Open Home Page
    Verify Home Page Title    Your Store
    Search for product    MacBook
    Verify Search Result
    Add product to cart
    open cart section
    Verify product in cart
    Remove product from cart
    Verify cart is empty