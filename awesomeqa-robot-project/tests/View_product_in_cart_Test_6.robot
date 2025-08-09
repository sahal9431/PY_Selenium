*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/home_page.robot
Resource    ../pages/cart_page.robot

**** Test Cases ***
View Product In Cart Test
    [Documentation]    This test case verifies that a product can be added to the cart and viewed correctly.
    Given Open Home Page
    And Verify Home Page Title    Your Store
    And Search for product    MacBook
    And Verify Search Result
    And Add product to cart
    When open cart section
    Then Verify product in cart