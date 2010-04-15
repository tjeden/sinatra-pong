Feature: Home page
  In order to join ping-pong league
  As a guest
  I want to see home page of ping pong app

  Scenario: Accessing home page
    Given I am the guest
    When I go to the home page
    Then I should see "Hello ping-pong"
