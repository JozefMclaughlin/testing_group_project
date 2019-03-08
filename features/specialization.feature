Feature: I am able to interact with the Specializations
  As a user
  I want to access a list of all Specializations
  I want to access an individual Specialization
  I want to create a new Specialization
  I want to edit an existing Specialization
  I want to delete a Specialization
  So that I can monitor the Specializations

  @spec1
  Scenario: I am able to access a list all Specializations
    Given I am logged in
    When I click the Specialization link
    Then the page displaying a list of all Specializations is open

  @spec2
  Scenario: I am able to access an individual Specialization
    Given I am logged in
    When I click the Specialization link
    And the page displaying a list of all Specializations is open
    And I click a specialization
    Then I arrive at the individual specialization show page

  @spec3
  Scenario: I am able to create a new Specialization
    Given I am logged in
    When I click the Specialization link
    And I click the add new Specialization link
    And I enter a new Specialization
    And click the save click
    Then I should be on the Specialization page with the new Specialization added

  @spec4
  Scenario: I am not able to create a new Specialization without a name
    Given I am logged in
    When I click the Specialization link
    And the page displaying a list of all Specializations is open
    And I click the add new Specialization link
    And click the save click
    Then I should receive an error about the specialization having no name

  @spec5
  Scenario: I am able to edit an individual Specialization
    Given I am logged in
    When I click the Specialization link
    And I click a specialization
    And I click the edit link
    And I edit the Specialization
    And click the save click
    Then I should be on the Specialization page with the edited Specialization updated

  @spec6
  Scenario: I am able to delete an existing Specialization
    Given I am logged in
    When I click the Specialization link
    And I click a Specialization
    And I click the delete link
    Then I should be on the Specialization page with the deleted Specialization removed
