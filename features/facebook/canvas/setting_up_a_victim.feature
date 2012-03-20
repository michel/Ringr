Feature: Pranking your mate

  Scenario: Filling in the victims contact info
    Given I am on the new victim page
    And I fill in the form with Michels contact info
    Then I receive an URL that contains the GUID
