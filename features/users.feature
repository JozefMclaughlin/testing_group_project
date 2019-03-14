
Feature: I am able to create, read, edit or delete user information

  @createuser
  Scenario: I am able to create a new user
    Given I am logged in
    And I am on the users page
    When I click onto Add New
    And the new user page loads
    And I enter the user's first name
    And I enter the user's last name
    And I enter the user's email address
    And I enter the user's password
    And I select the user's cohort
    And I select the user's role
    And I click Save User
    Then the new user is displayed on the users page
    And so I delete the user

  @edituser
  Scenario: I am able to edit a user
    Given I am logged in
    And I am on the users page
    When I click onto Add New
    And the new user page loads
    And I enter the user's first name
    And I enter the user's last name
    And I enter the user's email address
    And I enter the user's password
    And I select the user's cohort
    And I select the user's role
    And I click Save User
    And I click on the user
    And I click the edit button
    And I change the user's first name
    And I change the user's last name
    And I change the user's email address
    And I change the user's password
    And I select the user's cohort
    And I select the user's role
    And I click Save User
    Then the user's details should be updated
    And so I delete the edited user

  @deleteuser
  Scenario: I am able to delete a user
    Given I am logged in
    And I am on the users page
    When I click onto Add New
    And the new user page loads
    And I enter the user's first name
    And I enter the user's last name
    And I enter the user's email address
    And I enter the user's password
    And I select the user's cohort
    And I select the user's role
    And I click Save User
    And I click on the user
    And I click on Delete
    Then the user's page should be deleted

  @readuser
  Scenario: I am able to read data about a user
    Given I am logged in
    And I am on the users page
    When I click onto Add New
    And the new user page loads
    And I enter the user's first name
    And I enter the user's last name
    And I enter the user's email address
    And I enter the user's password
    And I select the user's cohort
    And I select the user's role
    And I click Save User
    When I click on the user
    Then their individual information is displayed on the page
    And so I delete the user

  @listuser
  Scenario: I am able to see a list of users
    Given I am logged in
    And I am on the users page
    Then a list of all the users is displayed on the page

  @missingdetailscreateuser
  Scenario Outline: I am not able to create a user if I am missing any details
    Given I am logged in
    And I am on the users page
    When I click onto Add New
    And I enter the user's first name <first_name>
    And I enter the user's last name <last_name>
    And I enter the user's email address <email_address>
    And I enter the user's password <password>
    And I click Save User
    Then I receive a create user error message

  Examples:
  | first_name | last_name | email_address          | password  |
  |            | Jobless   | steve@spartaglobal.com | Password1 |
  | Steve      |           | steve@spartaglobal.com | Password1 |
  | Steve      | Jobless   |                        | Password1 |
  | Steve      | Jobless   | steve@spartaglobal.com |           |

  @missingdetailsedituser
  Scenario Outline: I am not able to create a user if I am missing any details
    Given I am logged in
    And I am on the users page
    When I click on any user
    And I click the edit button
    And I enter the user's first name <first_name>
    And I enter the user's last name <last_name>
    And I enter the user's email address <email_address>
    And I enter the user's password <password>
    And I click Save User
    Then I receive a edit user error message

  Examples:
  | first_name | last_name | email_address          | password  |
  |            | Jobless   | steve@spartaglobal.com | Password1 |
  | Steve      |           | steve@spartaglobal.com | Password1 |
  | Steve      | Jobless   |                        | Password1 |
  | Steve      | Jobless   | steve@spartaglobal.com |           |

  @emailnotformcreateuser
  Scenario: I am not able to enter an email address not of the form /@spartaglobal on the create page
    Given I am logged in
    And I am on the users page
    When I click onto Add New
    And I enter the user's first name
    And I enter the user's last name
    And I enter a user's email address not of the form /@spartaglobal
    And I enter the user's password
    And I select the user's cohort
    And I select the user's role
    And I click Save User
    Then I receive a create user error message

  @emailnotformedituser
  Scenario: I am not able to enter an email address not of the form /@spartaglobal on the edit page
    Given I am logged in
    And I am on the users page
    When I click onto Add New
    And the new user page loads
    And I enter the user's first name
    And I enter the user's last name
    And I enter the user's email address
    And I enter the user's password
    And I select the user's cohort
    And I select the user's role
    And I click Save User
    And I click on the user
    And I click the edit button
    And I change the user's first name
    And I change the user's last name
    And I enter a user's email address not of the form /@spartaglobal
    And I change the user's password
    And I select the user's cohort
    And I select the user's role
    And I click Save User
    Then I receive a edit user error message
    And so I delete the user

  @passwordmissingcreateuser
  Scenario Outline: I am not able to create a user if the user's password is missing any criteria on the create page
    Given I am logged in
    And I am on the users page
    When I click onto Add New
    And I enter the user's first name
    And I enter the user's last name
    And I enter the user's email address
    And I enter the user's password <password_input>
    And I click Save User
    Then I receive a create user error message

  Examples:
  | password_input |
  | Password |
  | password1 |
  | PASSWORD1 |

  @passwordmissingedituser
  Scenario Outline: I am not able to create a user if the user's password is missing any criteria on the edit page
  Given I am logged in
  And I am on the users page
  When I click onto Add New
  And the new user page loads
  And I enter the user's first name
  And I enter the user's last name
  And I enter the user's email address
  And I enter the user's password
  And I select the user's cohort
  And I select the user's role
  And I click Save User
  And I click on the user
  And I click the edit button
  And I enter the user's first name
  And I enter the user's last name
  And I enter the user's email address
  And I enter the user's password <password_input>
  And I click Save User
  Then I receive a edit user error message
  And so I delete the user

  Examples:
  | password_input |
  | Password |
  | password1 |
  | PASSWORD1 |
