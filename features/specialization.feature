Feature: I am able to interact with the Specializations
  As a user
  I want to access a list of all Specializations
  I want to access an individual Specialization
  I want to create a new Specialization
  I want to edit an existing Specialization
  I want to delete a Specialization
  So that I can monitor the Specializations

  Scenario: I am able to access a list all Specializations
    Given I am on the homepage
    When I click the Specialization link
    Then the page displaying a list of all Specializations is open

  Scenario Outline: I am able to access an individual Specialization
    Given I am on the homepage
    When I click the Specialization link
    Given the page displaying a list of all Specializations is open
    When I click an <Specialization>
    Then I arrive at the individual <Specialization> show page

    Examples:
    |     Specialization      |
    |        SDET             |
    |        DevOps           |
    |        Management       |

  Scenario: I am able to create a new Specialization
    Given I am on the homepage
    When I click the Specialization link
    Given the page displaying a list of all Specializations is open
    When I click the add new Specialization link
    And I am taken to the make a new Specialization page
    When I enter a new Specialization
    And click the save click
    Then I should be on the Specialization page with the new Specialization added

  Scenario Outline: I am able to edit an individual Specialization
    Given I am on the homepage
    When I click the Specialization link
    Given the page displaying a list of all Specializations is open
    When I click an <Specialization>
    Given I arrive at the individual <Specialization> show page
    When I click the edit link
    And I am taken to the edit a Specialization page
    When I edit the Specialization
    And click the save click
    Then I should be on the Specialization page with the edited Specialization updated

    Examples:
    |     Specialization      |
    |        SDET             |
    |        DevOps           |
    |        Management       |

  Scenario Outline: I am able to delete an individual Specialization
    Given I am on the homepage
    When I click the Specialization link
    Given the page displaying a list of all Specializations is open
    When I click an <Specialization>
    Given I arrive at the individual <Specialization> show page
    When I click the delete(can use regex edit and delete) link
    Then I should be on the Specialization page with the deleted Specialization removed

    Examples:
    |     Specialization      |
    |        SDET             |
    |        DevOps           |
    |        Management       |
