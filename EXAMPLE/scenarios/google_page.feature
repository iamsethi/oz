Feature: Google page

  @test
  Scenario: Verify search functionality of google
    Given I am on the Google Page
    Then I can see that all the content on the page is correct
    When I fill the page with Data
    And I click the search button



