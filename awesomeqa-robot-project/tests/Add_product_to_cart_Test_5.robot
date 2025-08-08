*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/home_page.robot

*** Test Cases ***
Add Product to Cart Test
    [Documentation]    This test case adds a product to the cart and verifies the success message.
    Open Home Page
    Verify Home Page Title    Your Store
    Search for product    MacBook
    Verify Search Result
    Add product to cart