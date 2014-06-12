Feature: Manipulating Lists

  Background:
    Given I view "list.html"

  Scenario: Getting items in a list
    Then I should see "5" items in a list

  Scenario: Getting an item in a list
    Then I should see "geordi laforge" in position "4" of the list
    Then I should see html "<li>geordi laforge</li>" in position "4" of the list

  Scenario: Serializing items in a list
    Then I should see the following list:
      | data            |
      | 7 of nine       |
      | deanna troi     |
      | geordi laforge  |
      | John Crichton   |

  Scenario: Filtering items in a list
    When I filter by "John" I should see "1" element

  Scenario: Getting items in a diverse list
    Given I am only searching for items with a link I should only see "5" items in the list
