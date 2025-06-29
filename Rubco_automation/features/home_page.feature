Feature: Home Page Functionality

Scenario: Verify Home Page Title
    Given the user is on the Rubco Group home page
    Then the page title should be "Buy Mattress and Furniture Online | Kerala state Rubber Co-operative Limited"

Scenario: Verify Mattress Category Link
    Given the user is on the Rubco Group home page
    When the user clicks on the "Mattress" product category link
    Then the page title should contain "Mattress Archives | Rubco Group"
    And the URL should contain "mattress"

Scenario: Verify Navigation to About Us Page
    Given the user is on the Rubco Group home page
    When the user clicks on the "About Us" link
    Then the page title should be "About Us | Rubco Group"
    And the URL should contain "/about-us"