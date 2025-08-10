*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/variables.robot

*** Keywords ***
Open Register Page
    [Documentation]    Opens the registration page of the application.
    wait Until Page Contains Element    ${My_Account_Button}    timeout=10s
    Click Element    ${My_Account_Button}
    Wait Until Page Contains Element    ${Register_Button}    timeout=10s
    # Ensure the Register button is visible before clicking
    Click Element    ${Register_Button}

Enter registration details
    [Documentation]    Enters the registration details into the registration form.
    Input Text    ${First_name_field}    ${First_name}
    Input Text    ${Last_name_filed}    ${Last_name}
    Input Text    ${Email_field}    ${VALID_EMAIL}
    Input Text    ${Telephone_field}    ${telephone}
    Input Text    ${Password_field}    ${VALID_PASSWORD}
    Input Text    ${Confirm_password_field}    ${VALID_PASSWORD}
    Click Element    ${Regitration_privacy_policy_checkbox}
    Sleep    5s

Click Continue Button
    [Documentation]    Clicks the continue button to submit the registration form.
    Click Element    xpath=${Continue_button}

Verify Registration Success
    Wait Until Element Is Visible    ${SUCCESS_MESSAGE}    timeout=10s
    Element Text Should Be    ${SUCCESS_MESSAGE}    Your Account Has Been Created!