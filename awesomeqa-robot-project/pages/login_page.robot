*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/variables.robot

*** Keywords ***
Open Login Page
    [Documentation]    Opens the login page of the application.
    Wait Until Page Contains Element    ${My_Account_Button}    timeout=10s
    Click Element    ${My_Account_Button}
    Wait Until Page Contains Element    ${Login_Button_home}    timeout=10s
    # Ensure the Login button is visible before clicking
    Click Element    ${Login_Button_home}

Enter Login Credentials
    [Documentation]    Enters the login credentials into the login form.
    Input Text    ${Input_Email_login_page}    ${VALID_EMAIL}
    Input Text    ${Input_Password_login_page}    ${VALID_PASSWORD}

Click login Button
    [Documentation]    Clicks the login button to submit the login form.
    Click Button    xpath=${Login_button}

Verify Login Successful
    Wait Until Element Is Visible    ${MY_ACCOUNT_TEXT}    timeout=10s
    Element Should Contain    ${MY_ACCOUNT_TEXT}    My Account

Click on Home button in My Account page
    [Documentation]    Clicks the Home button in the My Account section.
    Wait Until Keyword Succeeds    2x    2s    Click Element    ${Home_button_in_my_account}
