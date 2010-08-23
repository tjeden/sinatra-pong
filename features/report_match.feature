Feature: Reporting match

  In order to have game results in system, and find a winner
  As a user
  I want to add a match result
  
  Scenario: Register a game
    Given a dm_user "Jack" exists with email: "jack@example.com"
    And a dm_user "Jessica" exists with email: "jessica@example.com"
    Given I login as a "Jack"
    And I am on the home page
    Then I should see "report game"
    When I follow "report game"
    Then I select "jessica@example.com" from "opponent e-mail"
    And I fill in "my score" with "2"
    And I fill in "oponent score" with "1"
    And I press "Save"
    Then I should see "Game has been added"
