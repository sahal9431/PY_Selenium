*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/variables.robot

*** Variables ***
${wishlist_macbook}    xpath=//a[contains(text(), 'MacBook')]
*** Keywords ***
Verify MacBook in wishlist
    [Documentation]    Verifies that MacBook is present in the wishlist.
    Wait Until Keyword Succeeds    5x    2s    Element Should Contain    ${wishlist_macbook}    MacBook