*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/home_page.robot
Resource    ../pages/wishlist_page.robot

*** Test Cases ***
Add MacBook to Wishlist
    [Documentation]    Adds a MacBook to the wishlist and verifies it.
    [Tags]    P0
    Given Open Home Page
    And Verify Home Page Title    Your Store
    When Add MacBook to Wishlist
    And Open Wishlist page and verify whishlist page
    Then Verify MacBook in wishlist