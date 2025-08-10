*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/variables.robot

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