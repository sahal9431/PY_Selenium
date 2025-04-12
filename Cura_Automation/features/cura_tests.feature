Feature: CURA Healthcare Service Automation

  Scenario: 1 - Load homepage
    Given I open the CURA homepage
    Then I should see "CURA Healthcare Service" in title

  Scenario: 2 - Login with valid credentials
    Given I open the CURA homepage
    When I login with username "John Doe" and password "ThisIsNotAPassword"
    Then I should see "Make Appointment"

  Scenario: 3 - Login with invalid credentials
    Given I open the CURA homepage
    When I login with username "wrong" and password "wrong"
    Then I should see an error message
 
  Scenario: 4 - Make appointment with valid inputs
    Given I log in to CURA with valid credentials
    When I fill the appointment form with valid details
    Then I should see the confirmation page

 Scenario: 5 - Navigate to History page
    Given I log in to CURA with valid credentials
    When I click on menu and go to History
    Then I should see the History page