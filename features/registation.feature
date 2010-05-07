Feature: Registration feature

  In order to join ping-pong league
  As a guest
  I want to register and log in

  Scenario: Register and log in
    Given I am the guest
    And I go to the home page
    Then I should see "sign up"
    When I follow "sign up"
    And I fill in "Email" with "user@example.com"
    And I fill in "Password" with "password"
    And I fill in "Confirm Password" with "password"
    And I press "Create account"  
    Then I should see "Account created"
