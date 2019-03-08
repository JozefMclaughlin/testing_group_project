Feature: View Cohorts
  As a User
  I want to be able to see a list of all cohorts
  So that I can see all the cohorts available

  @cohorts1
  Scenario: I want to view a list of all cohorts
    Given I am logged in
    When I click the Cohorts tab
    Then I should be taken to the Cohorts page
    And I should be able to see a list of all cohorts

  @cohorts2
  Scenario: I want to see more details of a specific cohort
    Given I am logged in
    When I click the Cohorts tab
    And I click on a cohort
    Then I should be taken to that cohort's details page

  @cohorts3
  Scenario: I want to create a new cohort that has both a name and specialization
    Given I am logged in
    When I click the Cohorts tab
    And I click Add New
    And I enter a name for my cohort
    And I select a specialization for my cohort
    And I click Save Cohort
    Then My new cohort should be added to the cohorts list

  @cohorts4
  Scenario: I cannot create a new cohort that has neither a name or specialization
    Given I am logged in
    When I click the Cohorts tab
    And I click Add New
    And I click Save Cohort
    Then the error will display showing a lack of cohort name

  @cohorts5
  Scenario: I want to edit the name of an existing cohort or specialisation
    Given I am logged in
    When I click the Cohorts tab
    And I click on a new cohort
    And I click Edit on that cohort's page
    And I change the current name to the desired name
    And I select a specialization for my cohort
    And I click Save Cohort
    Then The cohort's new name should be saved

  @cohorts6
  Scenario: I don't want to edit the name of an existing cohort or specialisation if I leave the name or specialization blank
    Given I am logged in
    When I click the Cohorts tab
    And I click on a cohort
    And I click Edit on that cohort's page
    And I leave the name field blank
    And I click Save Cohort
    Then an error code must be displayed and the cohort shouldn't save

  @cohorts7
  Scenario: I want to delete an existing cohort
    Given I am logged in
    When I click the Cohorts tab
    And I click on the created cohort
    And I click Delete on that cohort's page
    Then The cohort should be deleted
