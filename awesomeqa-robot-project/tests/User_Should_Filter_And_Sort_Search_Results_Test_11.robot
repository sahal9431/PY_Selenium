*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/home_page.robot
Resource    ../pages/search_page.robot

*** Test Cases ***
User Should Filter And Sort Search Results
    [Documentation]    This test case verifies that the user can filter and sort search results.
    Given Open Home Page
    And Verify Home Page Title    Your Store
    And Search for product    Mac
    And Verify Search Result
    When Select Category    Laptops & Notebooks
    Then Sort Search Results    Price (High > Low)
    And Verify search result are sorted order