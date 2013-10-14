Feature: Viewer visits the home page
  In order to read the page
  As a viewer
  I want to see the home page of my app

  Scenario: View the home page
    Given I am on the home page
    Then I should see "Welcome to Orbital Express"

  Scenario: View the sign up button
    Given I am on the home page
    Then I should see "Sign up"

  Scenario: View the log in button
    Given I am on the home page
    Then I should see "Log in"