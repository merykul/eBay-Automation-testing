Feature: Sign in
  As a user I want to be able to sign in,
  so I can use already created account.

  Scenario: Verify that user can successfully sign in
    Given I am on the eBay login page
    When I sign in with existing user data
    Then I see user singed in and redirected to the main page

