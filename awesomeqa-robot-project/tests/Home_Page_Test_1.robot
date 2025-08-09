*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/variables.robot
Resource    ../pages/home_page.robot

*** Test Cases ***
User able to open home page and verify title
    [Documentation]    This test case verifies that the user can open the home page and check the title.
    Given Open Home Page
    Then Verify Home Page Title    Your Store