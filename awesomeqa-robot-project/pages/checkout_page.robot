*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    ../variables/variables.robot

*** Keywords ***
Click Checkout Button
    [Documentation]    Clicks the checkout button to proceed with the purchase.
    Wait Until Element Is Visible    ${Cart_button}   10s
    Wait Until Keyword Succeeds    5x    2s    Click Element    ${Cart_button}
    Wait Until Element Is Visible    ${check_for_product_in_cart_intractive_model}   10s
    Element Should Contain    ${check_for_product_in_cart_intractive_model}    MacBook
    Click Element    ${checkout_button}

Verify_checkout_page
    [Documentation]    Verifies that the checkout page is displayed correctly.
    Wait Until Element Is Visible    ${Verify_checkout_page}   10s
    Element Should Contain    ${Verify_checkout_page}    Checkout
Select Checkout Page Register Account Radio Button
    [Documentation]    Selects the register account option on the checkout page.
    Wait Until Element Is Visible    ${Checkout_page_Register_Acc_radio_button}   10s
    Click Element    ${Checkout_page_Register_Acc_radio_button}
    Click Element    ${Continue_button_checkout_page}

Fill Checkout Page Register Form
    [Documentation]    Fills in the registration form on the checkout page.
    Wait Until Element Is Visible    ${Checkout_page_First_name}   10s
    Input Text    ${Checkout_page_First_name}    ${First_name}
    Input Text    ${Checkout_page_Last_name}    ${Last_name}
    ${rand}=    Generate Random String    4
    Input Text    ${Checkout_page_Email}    test_${rand}@mail.com
    Input Text    ${Checkout_page_Telephone}    ${telephone}
    Input Text    ${checkout_password}    ${password}
    Input Text    ${Checkout_page_Confirm_password}    ${password}
    Input Text    ${Checkout_page_Address_1}    123 Main St
    Input Text    ${Checkout_page_City}    Test City
    Input Text    ${Checkout_page_Postcode}    12345
    Wait Until Element Is Visible    css:select[name='country_id']    timeout=10s
    Select From List By Label        css:select[name='country_id']    India
    Wait Until Element Is Visible    css:select[name='zone_id']       timeout=10s
    Select From List By Label        css:select[name='zone_id']       Kerala
    Click Element    ${Checkout_page_newsletter_checkbox}
    Click Element    ${Checkout_page_privacy_policy_checkbox}
    Click Element    ${Continue_button_checkout_page_Register}

Select guest checkout Radio Button
    [Documentation]    Selects the guest checkout option on the checkout page.
    Wait Until Element Is Visible    ${Guest_checkout_radio_button}   10s
    Click Element    ${Guest_checkout_radio_button}
    Click Element    ${Continue_button_checkout_page}

Fill Checkout Page Guest Form
    [Documentation]    Fills in the guest form on the checkout page.
     Wait Until Element Is Visible    ${Checkout_page_First_name}   10s
    Input Text    ${Checkout_page_First_name}    ${First_name}
    Input Text    ${Checkout_page_Last_name}    ${Last_name}
    ${rand}=    Generate Random String    4
    Input Text    ${Checkout_page_Email}    test_${rand}@mail.com
    Input Text    ${Checkout_page_Telephone}    ${telephone}
    Input Text    ${Checkout_page_Address_1}    123 Main St
    Input Text    ${Checkout_page_City}    Test City
    Input Text    ${Checkout_page_Postcode}    12345
    Wait Until Element Is Visible    css:select[name='country_id']    timeout=10s
    Select From List By Label        css:select[name='country_id']    India
    Wait Until Element Is Visible    css:select[name='zone_id']       timeout=10s
    Select From List By Label        css:select[name='zone_id']       Kerala
    Click Element    ${Guest_checkout_continue_button}