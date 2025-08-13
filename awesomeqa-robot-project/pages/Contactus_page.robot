*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/variables.robot

*** Keywords ***
Verify Contact Us Page
    [Documentation]    Verifies that the Contact Us page is displayed correctly.
    Wait Until Element Is Visible    ${Contact_Us_page_heading}   10s
    Element Should Contain    ${Contact_Us_page_heading}    Contact Us

Enter Contact Details
    [Arguments]    ${Name}    ${Email}    ${Enquiry}
    [Documentation]    Fills in the contact form with the provided details.
    Input Text    ${Contact_Us_Name_Field}    ${Name}
    Input Text    ${Contact_Us_Email_Field}    ${Email}
    Input Text    ${Contact_Us_Enquiry_Field}    ${Enquiry}
    Click Element    ${Contact_Us_Submit_Button}

Verify Contact Us Form Submission
    [Documentation]    Verifies that the contact form submission was successful.    
    Wait Until Element Is Visible    ${Contact_Us_Success_Message}   10s
    Element Should Contain    ${Contact_Us_Success_Message}    Your enquiry has been successfully sent to the store owner!

