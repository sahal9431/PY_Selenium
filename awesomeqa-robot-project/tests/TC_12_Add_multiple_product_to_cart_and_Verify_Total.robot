*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/home_page.robot
Resource    ../pages/cart_page.robot

*** Test Cases ***
Add Multiple Products to Cart and Verify Total
    [Documentation]    This test case adds multiple products to the cart and verifies the total.
    [Tags]    P0
    Open Home Page
    Verify Home Page Title    Your Store
    Search for product    MacBook
    Add product to cart by name    MacBook
    Add product to cart by name    iPhone
    Open cart page
    Get item price from cart
    Get cart total price
    Verify total price in cart and item price