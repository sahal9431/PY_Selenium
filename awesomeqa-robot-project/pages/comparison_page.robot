*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/variables.robot

*** Keywords ***
Verify Comparison page
    [Documentation]    Verifies the comparison page after adding products to compare.
    Wait Until Element is Visible    ${Comparison_page_verify}    10s

Verify Products in Comparison
    [Arguments]    @{Product}
    [Documentation]    Verifies that the specified product is present in the comparison page.
    wait Until Element Is Visible    ${Comparison_table}    10s
    ${Table_text}    Get Text    ${Comparison_table}
    FOR    ${element}    IN    @{Product}
        Should Contain    ${Table_text}    ${element}
    END