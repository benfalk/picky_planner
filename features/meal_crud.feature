Feature: Doing CRUD with Meals

  Background:
    Given the test user exists
    And I am logged in as test user

  Scenario: A user can add food items
    When I visit "/meals/new"
    And put "600" in the "meal[calories]" field
    And click the "Create Meal" button
    Then the test user should have a meal with "600" calories
