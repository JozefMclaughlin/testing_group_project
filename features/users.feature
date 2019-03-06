Feature: I am able to create, read, edit or delete user information

  Scenario: I am able to create a new user
    Given I am on the users page
    When I click onto "Add New"
    And the new user page loads
    And I enter the user's first name
    And I enter the user's last name
    And I enter the user's email address
    And I enter the user's password
    And I select the user's cohort
    And I select the user's role
    Then the new user is added to the database
    And the new user is displayed on the users page

  Scenario: I am able to edit a user
    Given I am on the users page
    When I click on the user
    And I click the edit button
    And I enter the user's first name
    And I enter the user's last name
    And I enter the user's email address
    And I enter the user's passsword
    And I select the user's cohort
    And I select the user's role
    And I click "Save User"
    Then the database should be updated with the user's new information
    And the user's details should be updated


  Scenario: I am able to read data about a user
    Given I am on the users page
    When I click on a user
    Then their individual information is displayed on the page

  Scenario: I am able to delete a user
    Given I am on the users page
    When I click on a user
    And I click on "Delete"
    Then the user should be deleted from the database
    And I should be redirected to the users page
    And I shouldn't be able to see that user anymore

Feature: I receive an error message when I miscorrectly input information

  Scenario Outline: I am not able to create a user if I am missing any details
    Given I am on the users page
    When I click onto "Add New"
    And I enter the user's <first_name>
    And I enter the user's <last_name>
    And I enter the user's <email_address>
    And I enter the user's <password>
    And I select the user's <cohort>
    And I select the user's <role>
    Then I receive an <error> message

  Examples:
  | first_name | last_name | email_address | password | cohort | role | error |
  |  | Jobless | steve@spartaglobal.com | Password1 | Engineering-22 | Trainee | "All fields must be filled. Password must be at least 8 characters, including 1 uppercase, 1 lowercase, and 1 number. Must be a @spartglobal.com email address." |
  | Steve |  | steve@spartaglobal.com | Password1 | Engineering-22 | Trainee | "All fields must be filled. Password must be at least 8 characters, including 1 uppercase, 1 lowercase, and 1 number. Must be a @spartglobal.com email address." |
  | Steve | Jobless |  | Password1 | Engineering-22 | Trainee | "All fields must be filled. Password must be at least 8 characters, including 1 uppercase, 1 lowercase, and 1 number. Must be a @spartglobal.com email address." |
  | Steve | Jobless | steve@spartaglobal.com |  | Engineering-22 | Trainee | "All fields must be filled. Password must be at least 8 characters, including 1 uppercase, 1 lowercase, and 1 number. Must be a @spartglobal.com email address." |
  | Steve | Jobless | steve@spartaglobal.com | Password1 |  | Trainee | "All fields must be filled. Password must be at least 8 characters, including 1 uppercase, 1 lowercase, and 1 number. Must be a @spartglobal.com email address." |
  | Steve | Jobless | steve@spartaglobal.com | Password1 | Engineering-22 |  | "All fields must be filled. Password must be at least 8 characters, including 1 uppercase, 1 lowercase, and 1 number. Must be a @spartglobal.com email address." |


  Scenario: I am not able to enter an email address not of the form "@spartaglobal"
    Given I am on the users page
    When I click onto "Add New"
    And I enter the user's first name
    And I enter the user's last name
    And I enter a user's email address not of the form "@spartaglobal"
    And I enter the user's password
    And I select the user's cohort
    And I select the user's role
    Then I receive an error message

  Scenario Outline: I am not able to create a user if the user's password is missing any criteria
    Given I am on the users page
    When I click onto "Add New"
    And I enter the user's <first_name2>
    And I enter the user's <last_name2>
    And I enter the user's <email_address2>
    And I enter the user's <password2>
    And I select the user's <cohort2>
    And I select the user's <role2>
    Then I receive an <error2> message

  Examples:
  | first_name2 | last_name2 | email_address2 | password2 | cohort2 | role2 | error2 |
  | Steve | Jobless | steve@spartaglobal.com | Password | Engineering-22 | Trainee | "All fields must be filled. Password must be at least 8 characters, including 1 uppercase, 1 lowercase, and 1 number. Must be a @spartglobal.com email address." |
  | Steve | Jobless | steve@spartaglobal.com | password1 | Engineering-22 | Trainee | "All fields must be filled. Password must be at least 8 characters, including 1 uppercase, 1 lowercase, and 1 number. Must be a @spartglobal.com email address." |
  | Steve | Jobless | steve@spartaglobal.com | PASSWORD1 | Engineering-22 | Trainee | "All fields must be filled. Password must be at least 8 characters, including 1 uppercase, 1 lowercase, and 1 number. Must be a @spartglobal.com email address." |

  Scenario Outline: I am not able to create a user if the user's cohort or role isn't on the system
    Given I am on the users page
    When I click onto "Add New"
    And I enter the user's <first_name3>
    And I enter the user's <last_name3>
    And I enter the user's <email_address3>
    And I enter the user's <password3>
    And I select the user's <cohort3>
    And I select the user's <role3>
    Then I receive an <error3> message

  Examples:
  | first_name3 | last_name3 | email_address3 | password3 | cohort3 | role3 | error3 |
  | Steve | Jobless | steve@spartaglobal.com | Password1 | Woof | Trainee | ?? |
  | Steve | Jobless | steve@spartaglobal.com | Password1 | Engineering-22 | Bark | ?? |





  # Scenario: I am not able to create a user if I am missing the first name
  #   Given I am on the users page
  #   When I click onto "Add New"
  #   And don't input a first name
  #   And I enter the user's last name
  #   And I enter the user's email address
  #   And I enter the user's password
  #   And I select the user's cohort
  #   And I select the user's role
  #   Then I receive an error message
  #
  # Scenario: I am not able to create a user if I am missing the last name
  #   Given I am on the users page
  #   When I click onto "Add New"
  #   And I enter the user's first name
  #   And don't input a last name
  #   And I enter the user's email address
  #   And I enter the user's password
  #   And I select the user's cohort
  #   And I select the user's role
  #   Then I receive an error message
  #
  # Scenario: I am not able to create a user if I am missing the email address
  #   Given I am on the users page
  #   When I click onto "Add New"
  #   And I enter the user's first name
  #   And I enter the user's last name
  #   And don't input a email address
  #   And I enter the user's password
  #   And I select the user's cohort
  #   And I select the user's role
  #   Then I receive an error message
  #
  #  Scenario: I am not able to create a user if I am missing the password
  #   Given I am on the users page
  #   When I click onto "Add New"
  #   And I enter the user's first name
  #   And I enter the user's last name
  #   And I enter the user's email address
  #   And don't input a password
  #   And I select the user's cohort
  #   And I select the user's role
  #   Then I receive an error message
  #
  # Scenario: I am not able to create a user if I am missing the user's cohort
  #   Given I am on the users page
  #   When I click onto "Add New"
  #   And I enter the user's first name
  #   And I enter the user's last name
  #   And I enter the user's email address
  #   And I enter the user's password
  #   And don't input a cohort
  #   And I select the user's role
  #   Then I receive an error message
  #
  # Scenario: I am not able to create a user if I am missing the user's role
  #   Given I am on the users page
  #   When I click onto "Add New"
  #   And I enter the user's first name
  #   And I enter the user's last name
  #   And I enter the user's email address
  #   And I enter the user's password
  #   And I select the user's cohort
  #   And don't input a role
  #   Then I receive an error message
  #
  # Scenario: I am not able to enter an email address not of the form "@spartaglobal"
  #   Given I am on the users page
  #   When I click onto "Add New"
  #   And I enter the user's first name
  #   And I enter the user's last name
  #   And I enter a user's email address not of the form "@spartaglobal"
  #   And I enter the user's password
  #   And I select the user's cohort
  #   And I select the user's role
  #   Then I receive an error message
  #
  # Scenario: I am not able to enter a password without at least 1 number
  #   Given I am on the users page
  #   When I click onto "Add New"
  #   And I enter the user's first name
  #   And I enter the user's last name
  #   And I enter the user's email address
  #   And I enter the user's password missing a number
  #   And I select the user's cohort
  #   And I select the user's role
  #   Then I receive an error message
  #
  # Scenario: I am not able to enter a password without at least 1 uppercase letter
  #   Given I am on the users page
  #   When I click onto "Add New"
  #   And I enter the user's first name
  #   And I enter the user's last name
  #   And I enter the user's email address
  #   And I enter the user's password missing an uppercase letter
  #   And I select the user's cohort
  #   And I select the user's role
  #   Then I receive an error message
  #
  # Scenario: I am not able to enter a password without at least 1 lowercase letter
  #   Given I am on the users page
  #   When I click onto "Add New"
  #   And I enter the user's first name
  #   And I enter the user's last name
  #   And I enter the user's email address
  #   And I enter the user's password missing a lowercase letter
  #   And I select the user's cohort
  #   And I select the user's role
  #   Then I receive an error message
  #
  # Scenario: I am not able to select a cohort that isn't on the system.
  #   Given I am on the users page
  #   When I click onto "Add New"
  #   And I enter the user's first name
  #   And I enter the user's last name
  #   And I enter the user's email address
  #   And I enter the user's password
  #   And I select a user's cohort not from the system
  #   And I select the user's role
  #   Then I receive an error message
  #
  # Scenario: I am not able to select a role that isn't on the system.
  #   Given I am on the users page
  #   When I click onto "Add New"
  #   And I enter the user's first name
  #   And I enter the user's last name
  #   And I enter the user's email address
  #   And I enter the user's password
  #   And I select the user's cohort
  #   And I select a user's role not from the system
  #   Then I receive an error message
