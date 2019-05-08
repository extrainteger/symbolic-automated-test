@OmniauthClient
Feature: OmniauthClient
  Omniauth client that uses Symbolic

  Scenario: PijarLoginWithSymbolic
    Given User is in Pijar webpage
    When user click Symbolic button in Pijar
    Then redirect to Symbolic webpage
    When user correctly enter email address
    Then redirect to password page
    When user correctly enter password
    Then redirect to Pijar home page
