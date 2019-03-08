
Feature: Create, read, update and delete roles
  @roles1
  Scenario: I am able to see a list of all roles available
    Given I am logged in
    And navigate to the roles page
    And I am redirected to the roles page which shows a list of roles available
    Then I can see that the admin, trainee and trainer roles are available
  @roles2
  Scenario: Clicking on an individual role will direct the user to the page for that role
    Given I am logged in
    And navigate to the roles page
    When I click on a role link
    Then I am directed to the individual page for that role
  @roles3
  Scenario: Adding an new role will add it to the page
    Given I am logged in
    And navigate to the roles page
    When I click the Add New button
    And I enter a name for the new Role
    And click the Save role button
    Then there is a new role on the Roles page with the same value I entered
  @roles4
  Scenario: Adding an new role without a name will give an error
    Given I am logged in
    And navigate to the roles page
    When I click the Add New button
    And click the Save role button
    Then an error will appear
  @roles5
  Scenario: Editing an existing role
    Given I am logged in
    And navigate to the roles page
    And I click on a role
    And I click the Edit role button
    And I input a different Role name
    And click the Save role button
    Then the role will be updated with the new name
  @roles6
  Scenario: Deleting an existing role will remove it from the page
    Given I am logged in
    And navigate to the roles page
    And I click on a role
    And I click the Delete button
    Then the role is no longer visible on the Roles page
