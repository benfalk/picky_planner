Feature: User Sign Up

  Scenario: A new user signs up
    Given I do not have an account
    When I visit "/"
    And put "testuser@test.com" in the "user[email]" field within "#sign-up-form"
    And put "password" in the "user[password]" field within "#sign-up-form"
    And put "password" in the "user[password_confirmation]" field within "#sign-up-form"
    And click the "Sign up" button
    Then I should should be signed up
