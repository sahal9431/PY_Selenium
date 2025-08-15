*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/variables.robot

*** Keywords ***
User Subscribes to Newsletter
    [Documentation]    User subscribes to the newsletter and verifies the success message.
    wait until keyword Succeeds    5x    2s    Click Element    ${Newsletter_yes_radio_button}
    wait until keyword Succeeds    5x    2s    Click Element    ${Newsletter_continue_button}
    Wait Until Element Is Visible    ${Newsletter_success_message}    timeout=10s
    Element Should Contain    ${Newsletter_success_message}    Success: Your newsletter subscription has been successfully updated!

User Unsubscribes from Newsletter
    [Documentation]    User unsubscribes from the newsletter and verifies the success message.
    wait until keyword Succeeds    5x    2s    Click Element    ${Newsletter_no_radio_button}
    wait until keyword Succeeds    5x    2s    Click Element    ${Newsletter_continue_button}
    Wait Until Element Is Visible    ${Newsletter_success_message}    timeout=10s
    Element Should Contain    ${Newsletter_success_message}    Success: Your newsletter subscription has been successfully updated!