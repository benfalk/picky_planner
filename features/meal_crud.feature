Feature: Doing CRUD with Meals

  Background:
    Given the test user exists
    And I am logged in as test user

  Scenario: A user can add meals
    When I visit "/meals/new"
    And put "600" in the "meal[calories]" field
    And click the "Create Meal" button
    Then the test user should have a meal with "600" calories
  
  Scenario: A user can add food to meals
    Given I have a food named "meat and gravy"
    When I visit "/meals/new"
    And click the "Add food" button
    And put "meat" in the "meal_items[][food_search]" field
    And click the "Ok" button
    And click the "Create Meal" button
    Then the test user should have a meal with the food item "meat and gravy"
