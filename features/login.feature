@Login
Feature: Login
  Directly login in Symbolic

  Scenario: Login
    Given Go to Symbolic webpage
    When user correctly enter email address
    Then redirect to password page
    When user correctly enter password
    Then successfully logged in