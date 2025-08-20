*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/home_page.robot
Resource    ../pages/comparison_page.robot

*** Test Cases ***
Compare Two Products
    [Documentation]    Compares two products and verifies the comparison page.
    [Tags]    P0
    Given Open Home Page
    And Verify Home Page Title    Your Store
    When Add product to compare    MacBook
    And Add product to compare    iPhone
    And Go to Compare page
    And Verify Comparison page
    And Verify Products in Comparison    MacBook    iPhone