Feature: Registration feature

  In order to join ping-pong league
  As a guest
  I want to register and log in

  Scenario: Register and log in
    Given I am the guest
    And I go to the home page
    Then I should see "register"
    When I follow "register"
    And I fill in "Username" with "jack"
    And I fill in "E-mail" with "user@example.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I press "Create my account"
    Then I should see "Account created, now you can log in"
