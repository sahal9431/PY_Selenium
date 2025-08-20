*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/variables.robot

*** Keywords ***
Open Edit Account Page
    [Documentation]    Opens the Edit Account page of the application.and verfy
    Wait Until Keyword Succeeds    5x    2s    Click Element    ${Edit_Account_Info_button}
    Wait Until Page Contains Element    ${Edit_Account_page_verification}    timeout=10s
    Element Should Be Visible    ${Edit_Account_page_verification}

Enter Account Information
    [Arguments]    ${name}    ${Last_name}    ${number}
    [Documentation]    Enters the account information into the Edit Account form.    
    Input Text    ${My_account_info_first_name}    ${name}
    Input Text    ${My_account_info_last_name}    ${last_name}
    Input Text    ${My_aacount_info_mobile}    ${number}
    Wait Until Keyword Succeeds    5x    2s    Click Element    ${My_account_info_continue_button}

Verify Edit Account Success Message
    [Documentation]    Verifies that the success message is displayed after editing account information.
    Wait Until Page Contains Element    ${Edit_Account_Success_message}    timeout=10s
    Element Should Be Visible    ${Edit_Account_Success_message}
    Element Text Should Be    ${Edit_Account_Success_message}    Success: Your account has been successfully updated.
