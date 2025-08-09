*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/home_page.robot

*** Test Cases ***
Search Product Test
    [Documentation]    This test case searches for a product and verifies the search result.
    Given Open Home Page
    And Verify Home Page Title    Your Store
    When Search for product    Iphone
    Then Verify Search Result