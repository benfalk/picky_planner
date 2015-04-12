Feature: Doing CRUD with Food
  
  Background:
    Given the test user exists
    And I am logged in as test user

  Scenario: A user can add food items
    When I visit "/foods/new"
    And put "apple" in the "food[name]" field
    And click the "Create" button
    Then the test user should have a food named "apple"
