*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/variables.robot

*** Variables ***
${Macbook_whishlist}    xpath=//a[normalize-space(text())='MacBook']/ancestor::div[@class='caption']/following-sibling::div[@class='button-group']/button[@type='button' and contains(@onclick, 'wishlist')]
*** Keywords ***
Open Home Page
    [Documentation]    Opens the home page of the application.
    Open Browser    ${Base_Url}    ${Browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    10s

Verify Home Page Title
    [Arguments]    ${Expected_Home_Page_Title}
    [Documentation]    Verifies that the home page title is correct.
    ${title}=    Get Title
    Should Be Equal As Strings    ${title}    ${Expected_Home_Page_Title}

Search for product
    [Arguments]    ${Product_Name}
    [Documentation]    Searches for a product on the home page.
    Input Text    ${Search_Input_Field}    ${Product_Name}
    Click Element    ${Search_Button}

Verify Search Result
    [Documentation]    Verifies that the search result matches the expected result.
    Wait Until Element Is Visible    ${Search_Result_heading}   10s
    Element Should Contain    ${Search_Result_heading}    Search

Add product to cart
    [Documentation]    Adds a product to the cart.And verifies Success message.
    Wait Until Element Is Visible    ${Add_macbook to carrt}   10s
    Click Element    ${Add_macbook to carrt}
    Wait Until Element Is Visible    ${SUCCESS_MESSAGE_ADD_TO_CART}   10s
    Element Should Contain    ${SUCCESS_MESSAGE_ADD_TO_CART}    Success: You have added MacBook to your shopping cart!

open cart section
    [Documentation]    Opens the cart section to view the added product.
    Wait Until Keyword Succeeds    5x    2s    Click Element    ${Cart_button}
    Wait Until Element Is Visible    ${check_for_product_in_cart_intractive_model}   10s
    Element Should Contain    ${check_for_product_in_cart_intractive_model}    MacBook
    Click Element    ${View_Cart_Button}

Open cart page
    [Documentation]    Opens the cart page to view the products in the cart.
    Wait Until Keyword Succeeds    5x    2s    Click Element    ${Cart_button}
    Wait Until Keyword Succeeds    5x    2s    Click Element    ${View_Cart_Button}

Add product to cart by name
    [Arguments]    ${Product_Name}
    [Documentation]    Adds a product to the cart by its name.
    Input Text    ${Search_Input_Field}    ${Product_Name}
    Wait Until Keyword Succeeds    5x    2s    Click Element    ${Search_Button}
    Wait Until Element Is Visible    xpath=//h1[contains(text(), '${Product_Name}')]   10s
    Wait Until Keyword Succeeds    5x    2s    Click Element    xpath=//a[normalize-space(text())='${Product_Name}']/ancestor::div[@class='caption']/following-sibling::div[@class='button-group']/button[@type='button']

Add MacBook to Wishlist
    [Documentation]    Adds a MacBook to the wishlist and verifies it.
    Wait Until Keyword Succeeds    5x    2s    Click Element    ${Macbook_whishlist}

Open Wishlist page and verify whishlist page
    [Documentation]    Opens the wishlist page to view the added products.
    Wait Until Keyword Succeeds    5x    2s    Click Element    ${Wishlist_button_home_page}
    ${User_signed_in_req}=    Run Keyword And Return Status    Element Should Contain    ${Wishlist_returning_customer}    Returning Customer
    IF    ${User_signed_in_req} == True
        Input Text    ${Wishlist_User_email}    leomessi107@gmail.com
        Input Text    ${Wishlist_User_password}    Worldcup@2022
        Wait Until Keyword Succeeds    5x    2s    Click Element    ${Wishlist_login_button}
    END
    Wait Until Element Is Visible    ${Wishlist_verify}   10s

Add product to compare
    [Arguments]    ${Product_Name}
    [Documentation]    Adds a product to the compare list.
    Input Text    ${Search_Input_Field}    ${Product_Name}
    Wait Until Keyword Succeeds    5x    2s    Click Element    ${Search_Button}
    Wait Until Keyword Succeeds    5x    2s    Click Element    xpath=//a[contains(text(), '${Product_Name}')]/ancestor::div[@class='caption']/following-sibling::div[@class='button-group']/button[3][@type='button']

Go to Compare page
    [Documentation]    Navigates to the compare page to view compared products.
    Wait Until Keyword Succeeds    5x    2s    Click Element    xpath=//a[text()='product comparison']
    