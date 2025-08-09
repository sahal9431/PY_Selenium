*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    String    
Resource    ../variables/variables.robot

*** Keywords ***

Select category
    [Arguments]    ${Category_Name}
    [Documentation]    Selects a category from the Search Page.
    Wait Until Keyword Succeeds    5x    2s    Select From List By Label    ${Search_catogory_dropdown}    ${Category_Name}

Sort search results
    [Arguments]    ${Sort_Order}
    [Documentation]    Sorts the search results based on the provided order.
    # Wait Until Element Is Visible    ${Search_Sort_dropdown}   10s
    Wait Until Keyword Succeeds    5x    2s    Select From List By Label    ${Search_Sort_dropdown}    ${Sort_Order}

Verify search result are sorted order
    [Documentation]    Verifies that the search results are sorted in the expected order.
    ${elements}=    Get WebElements    ${Search_price}
    ${actual_order}=    Create List
    FOR    ${element}    IN    @{elements}
        ${text}=    Get Text    ${element}
        ${price_clean}=    Replace String    ${text}    $    ${EMPTY}
        ${price_clean}=    Replace String    ${price_clean}    ,    ${EMPTY}
        ${price_clean}=    Fetch From Left    ${price_clean}    \n
        ${num}=    Convert To Number    ${price_clean}
        Append To List    ${actual_order}    ${num}
    END
    ${Expected_Order}=   Evaluate    sorted(${actual_order}, reverse=True)
    Log    ${actual_order}
    Lists Should Be Equal    ${actual_order}    ${Expected_Order}   msg=Search results are not sorted as expected.