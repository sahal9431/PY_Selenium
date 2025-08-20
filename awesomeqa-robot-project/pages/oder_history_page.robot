*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/variables.robot

*** Keywords ***
Open oder History Page
    [Documentation]    Opens the Order History page of the application.
    Wait Until Keyword Succeeds    5x    2s    Click Element    ${Order_History_Button}
    Wait Until Page Contains Element    ${Order_History_page_verification}    timeout=10s
    Element Should Be Visible    ${Order_History_page_verification}

Verify Empty Order History Message
    [Documentation]    Verifies that the empty order history message is displayed.
    Wait Until Page Contains Element    ${Oder_History_Empty_Message}    timeout=10s
    Element Text Should Be    ${Oder_History_Empty_Message}    You have not made any previous orders!