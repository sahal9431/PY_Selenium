*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/home_page.robot

*** Test Cases ***
Search Product Test
    [Documentation]    This test case searches for a product and verifies the search result.
    Open Home Page
    Verify Home Page Title    Your Store
    Search for product    Iphone
    Verify Search Result