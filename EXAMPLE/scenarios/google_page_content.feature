Feature: Test the content of the Home Page

  @test
  Scenario: Static text on the Home Page
    Given I am on the Google Page
    Then I can see that all the content on the page is correct
    When I fill the page with Data
    And I click the search button



