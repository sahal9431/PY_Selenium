*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections
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

Get item price from cart
    [Documentation]    Retrieves the item price from the cart.
    ${item_prices}=    Get WebElements    ${Item_Price_in_Cart}
    ${price_list}=    Create List
    FOR    ${price}    IN    @{item_prices}
        ${clean}=    Get Text    ${price}
        ${clean}=    Replace String    ${clean}    $    ${EMPTY}
        ${clean}=    Replace String    ${clean}    ,    ${EMPTY}
        ${clean}=    Fetch From Left    ${clean}    \n
        ${num}=    Convert To Number    ${clean}
        Append To List    ${price_list}    ${num}
    END
    ${Calculated_Total}=    Evaluate    sum(${price_list})
    RETURN    ${Calculated_Total}

Get cart total price
    [Documentation]    Retrieves the total price of items in the cart.
    Wait Until Keyword Succeeds    5x    2s    Scroll Element Into View    ${Total_price_in_cart}
    Wait Until Element Is Visible    ${Total_price_in_cart}   10s
    ${total_price}=    Get WebElement    ${Total_price_in_cart}
    ${clean_total}=    Get Text    ${total_price}
    ${clean_total}=    Replace String    ${clean_total}    $    ${EMPTY}
    ${clean_total}=    Replace String    ${clean_total}    ,    ${EMPTY}
    ${clean_total}=    Fetch From Left    ${clean_total}    \n
    ${total_price_num}=    Convert To Number    ${clean_total}
    RETURN    ${total_price_num}

Verify total price in cart and item price
    [Documentation]    Verifies that the total price in the cart matches the sum of item prices.
    ${item_price}=    Get item price from cart
    ${total_price}=    Get cart total price
    Log    Item Price: ${item_price}
    Log    Total Price: ${total_price}
    Should Be Equal As Numbers    ${item_price}    ${total_price}