Feature: Google Search

  Scenario: Search for flipkart on Google
    Given I am on the Google page
    When I search for "flipkart"
    Then I should see "flipkart" in the results

  Scenario: Search for Amazon on Google
    Given I am on the Google page
    When I search for "Amazon"
    Then I should see "Amazon" in the results