Feature: Create, read, update and delete roles

  Scenario: Clicking on the Roles button in the nav bar will direct the user to the Roles page
    Given I am on the log in page
    When I log in to the system
    And click on the the Roles button
    Then I am redirected to the roles page which shows a list of roles available

  Scenario: Clicking on an individual role will direct the user to the page for that role
    Given I am on the Roles page
    When I click on a role
    Then I am directed to the page for that role

  Scenario: Editing an existing role will update the role successfully
    Given I am on the Roles page
    When I click on a role
    And I click the Edit button
    And I input a different role name
    And I click the Save Role button
    Then the role will be updated with the new name

  Scenario: Deleting an existing role will remove it from the page
    Given I am on the Roles page
    When I click on a role
    And I click the Delete button
    Then the role is no longer visible on the Roles page

  Scenario: Deleting an existing role will remove it from the page
    Given I am on the Roles page
    When I click the Add New button
    And I enter a name for the new role
    And click the Save role button
    Then there is a new role on the Roles page with the same value I entered
