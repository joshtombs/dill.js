Feature: Iframe

  Background:
    Given I view "iframe.html"

  Scenario: Getting text from iframe
    When I switch to the iframe "iframe"
    Then I should see the content "Welcome to the other side"
    When I switch back to the page content
    Then I should see the content "Is the grass really greener?"
