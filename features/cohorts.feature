Feature: View Cohorts
  As a User
  I want to be able to see a list of all cohorts
  So that I can see all the cohorts available

  Scenario: I want to view a list of all cohorts
    Given I am logged in
    When I click the Cohorts tab
    Then I should be taken to the Cohorts page
    And I should be able to see a list of all cohorts

Feature: View Cohort Details
  As a User
  I want to be able to access an individual page for each cohort
  So that I can see that cohort’s information

  Scenario: I want to see more details of a specific cohort
    Given I am logged in
    Given I am on the Cohorts page
    When I click on a cohort
    Then I should be taken to that cohort's details page

Feature: Create a New Cohort
  As a User
  I want to be able to create a new cohort
  So that I can add new cohorts to the system
  ACCEPTANCE CRITERIA:
  -A cohort must have a:
               -Name
               -Specialisation

  Scenario: I want to create a new cohort
    Given I am logged in
    Given I am on the Cohorts page
    When I click Add New
    And I enter a name for my cohort
    And I select a specialisation for my cohort
    And I click Save Cohort
    Then My new cohort should be added to the cohorts list

Feature: Editing Existing Cohorts
  As a User
  I want to be able to edit an existing cohort
  So that I can update their information when necessary

  Scenario: I want to edit the name of an existing cohort
    Given I am logged in
    Given There are cohorts available to edit
    When I click an existing cohort
    And I click Edit on that cohort's page
    And I change the current name to the desired name
    And I click Save Cohort
    Then The cohort's new name should be saved

  Scenario: I want to edit the specialisation of an existing cohort
    Given I am logged in
    Given There are cohorts available to edit
    When I click an existing cohort
    And I click Edit on that cohort's page
    And I select a new specialisation
    And I click Save Cohort
    Then The cohort's specialisation should be changed

Feature: Deleting Existing Cohorts
  As a User
  I want to be able to delete an existing cohort
  So that I can remove cohorts from the system when necessary
  ACCEPTANCE CRITERIA:
  -Cohorts that currently have users attached to them must not be able to be deleted.

  Scenario: I want to delete an existing cohort
    Given I am logged in
    Given There is a nonzero amount of existing cohorts
    Given The cohort I want to delete is not already in use
    When I click an existing cohort
    And I click Delete on that cohort's page
    Then The cohort should be deleted
