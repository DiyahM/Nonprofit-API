Feature: Searching for Companies
  Background:
    Given there are companies in CharityNavigator.com

  Scenario: searching for cancer
    When I search for cancer
    Then it should return "AMC Cancer Research"
    Then it should not return "Marine Toys for Tots Foundation"

  Scenario: searching for toys
    When I search for toys
    Then it should not return "AMC Cancer Research"
    Then it should return "Marine Toys for Tots Foundation"

