*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/variables.robot

*** Keywords ***
Select review tab
    [Documentation]    Selects the review tab on the product details page.
    Wait Until Keyword Succeeds    5x    2s    Click Element    ${Details_page_review_tab}

Enter review details
    [Arguments]    ${name}    ${rating}
    [Documentation]    Enters the review details into the review form.
    Input Text    ${Review_Input_name}    ${name}
    Input Text    ${Review_Input_review}    ${Review_input}
    Click Element    xpath=//input[@name='rating' and @value='${rating}']
    Click Element    ${Review_Submit_button}

Verify review submission
    [Documentation]    Verifies that the review submission was successful.
    Wait Until Element Is Visible    ${Review_Success_message}    timeout=10s
    Element Should Contain    ${Review_Success_message}    Thank you for your review. It has been submitted to the webmaster for approval.