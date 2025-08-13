*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/home_page.robot
Resource    ../pages/Contactus_page.robot
Resource    ../variables/variables.robot

*** Test Cases ***
Contact Us Test Case
    [Documentation]    This test case verifies the Contact Us functionality.
    Given Open Home Page
    Then Verify Home Page Title    Your Store
    When Go to Contact Us page
    And Verify Contact Us Page
    Then Enter Contact Details    ${First_name}    ${VALID_EMAIL}    God bless you
    And Verify Contact Us Form Submission
    