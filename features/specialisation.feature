Feature: I am able to interact with the Specialisations
  As a user
  I want to access a list of all Specialisations
  I want to access an individual Specialisation
  I want to create a new Specialisation
  I want to edit an existing Specialisation
  I want to delete a Specialisation
  So that I can monitor the Specialisations

  Scenario: I am able to access a list all Specialisations
    Given I am on the homepage
    When I click the Specialisation link
    Then the page displaying a list of all Specialisations is open

  Scenario Outline: I am able to access an individual Specialisation
    Given I am on the homepage
    When I click the Specialisation link
    Given the page displaying a list of all Specialisations is open
    When I click an <Specialisation>
    Then I arrive at the individual <Specialisation> show page

    Examples:
    | Specialisation |
    |        1       |
    |        2       |
    |        3       |

  Scenario: I am able to create a new Specialisation
    Given I am on the homepage
    When I click the Specialisation link
    Given the page displaying a list of all Specialisations is open
    When I click the add new Specialisation link
    And I am taken to the make a new Specialisation page
    When I enter a new Specialisation
    And click the save click
    Then I should be on the Specialisation page with the new Specialisation added

  Scenario Outline: I am able to edit an individual Specialisation
    Given I am on the homepage
    When I click the Specialisation link
    Given the page displaying a list of all Specialisations is open
    When I click an <Specialisation>
    Given I arrive at the individual <Specialisation> show page
    When I click the edit link
    And I am taken to the edit a Specialisation page
    When I edit the Specialisation
    And click the save click
    Then I should be on the Specialisation page with the edited Specialisation updated

    Examples:
    | Specialisation |
    |        1       |
    |        2       |
    |        3       |

  Scenario Outline: I am able to delete an individual Specialisation
    Given I am on the homepage
    When I click the Specialisation link
    Given the page displaying a list of all Specialisations is open
    When I click an <Specialisation>
    Given I arrive at the individual <Specialisation> show page
    When I click the delete(can use regex edit and delete) link
    Then I should be on the Specialisation page with the deleted Specialisation removed

    Examples:
    | Specialisation |
    |        1       |
    |        2       |
    |        3       |
