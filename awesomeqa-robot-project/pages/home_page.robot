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