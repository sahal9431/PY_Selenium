*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/home_page.robot
Resource    ../pages/cart_page.robot

*** Test Cases ***
Remove Product From Cart Test
    [Documentation]    This test case verifies that a product can be removed from the cart.
    [Tags]    P1
    Given Open Home Page
    And Verify Home Page Title    Your Store
    And Search for product    MacBook
    And Verify Search Result
    And Add product to cart
    And open cart section
    And Verify product in cart
    When Remove product from cart
    Then Verify cart is empty