*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/variables.robot

*** Keywords ***
Verify product in cart
    [Documentation]    Verifies that the product is present in the cart.
    Wait Until Element Is Visible    ${Verify_Product_in_Cart}   10s
    Element Should Contain    ${Verify_Product_in_Cart}    MacBook

Remove product from cart
    [Documentation]    Removes the product from the cart.
    Wait Until Element Is Visible    ${Remove_Product_From_Cart}   10s
    Click Element    ${Remove_Product_From_Cart}

Verify cart is empty
    [Documentation]    Verifies that the cart is empty after removing the product.
    Wait Until Element Is Visible    ${Verify_cart_is_empty}   10s
    Element Should Contain    ${Verify_cart_is_empty}    Your shopping cart is empty!