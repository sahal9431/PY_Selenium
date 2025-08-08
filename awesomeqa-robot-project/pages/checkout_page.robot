*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/variables.robot

*** Keywords ***
Click Checkout Button
    [Documentation]    Clicks the checkout button to proceed with the purchase.
    Wait Until Element Is Visible    ${Cart_button}   10s
    Click Element    ${Cart_button}
    Wait Until Element Is Visible    ${check_for_product_in_cart_intractive_model}   10s
    Element Should Contain    ${check_for_product_in_cart_intractive_model}    MacBook
    Click Element    ${checkout_button}

Verify_checkout_page
    [Documentation]    Verifies that the checkout page is displayed correctly.
    Wait Until Element Is Visible    ${Verify_checkout_page}   10s
    Element Should Contain    ${Verify_checkout_page}    Checkout
