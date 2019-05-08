@Logout
Feature: Logout
  Directly logout in Symbolic

  Background:
    Given Authenticated user

  Scenario: Logout
    Given In home page
    When user click logout
    Then successfully logged out