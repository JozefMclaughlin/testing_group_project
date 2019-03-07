Feature: Create, read, update and delete roles

  Scenario: I am able to see a list of all roles available
    Given I am logged in
    And navigate to the roles page
    And I am redirected to the roles page which shows a list of roles available
    Then I can see that the admin, trainee and trainer roles are available

  Scenario: Clicking on an individual role will direct the user to the page for that role
    Given I am logged in
    And navigate to the roles page
    When I click on a role
    Then I am directed to the individual page for that role

  Scenario: Adding an new role will add it to the page
    Given I am logged in
    And navigate to the roles page
    When I click the Add New button
    And I enter a name for the new Role
    And click the Save role button
    Then there is a new role on the Roles page with the same value I entered

  Scenario: Adding an new role without a name will not add it to the page
    Given I am logged in
    And navigate to the roles page
    When I click the Add New button
    And click the Save role button
    Then an error will appear

  Scenario: Editing an existing role without creating a role
    Given I am logged in
    And navigate to the roles page
    And I click on a role
    And I click the Edit button
    And I input a different Role name
    And I click the Save role button
    Then the role will be updated with the new name

  Scenario: Editing an existing role will update the role successfully
    Given I am logged in
    And navigate to the roles page
    When I click the Add New button
    And I enter a name for the new Role
    And click the Save role button
    And I click on a role
    And I click the Edit button
    And I input a different Role name
    And I click the Save role button
    Then the role will be updated with the new name

  Scenario: Deleting a role will remove it from the page
    Given I am logged in
    And navigate to the roles page
    When I click the Add New button
    And I enter a name for the new Role
    And click the Save role button
    And I click on a role
    And I click the Delete button
    Then the role is no longer visible on the Roles page

  Scenario: Deleting an existing role will remove it from the page
    Given I am logged in
    And navigate to the roles page
    And I click on a role
    And I click the Delete button
    Then the role is no longer visible on the Roles page
