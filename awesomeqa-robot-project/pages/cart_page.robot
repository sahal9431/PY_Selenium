*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/variables.robot

*** Keywords ***
Verify product in cart
    [Documentation]    Verifies that the product is present in the cart.
    Wait Until Element Is Visible    ${Verify_Product_in_Cart}   10s
    Element Should Contain    ${Verify_Product_in_Cart}    MacBook