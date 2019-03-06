Feature: I am able login

  Scenario: I am met with a login page
  Given I load the homepage
  When I am on the homepage
  Then the login page is displayed

  Scenario Outline: I am able to logout on every page
  Given I am logged in
  And I am on a <page> of the app
  And I can see the logout button
  When I click logout
  Then I am logged out

  Examples:
  | page            |
  | users           |
  | cohorts         |
  | specialisations |


  Scenario: Users must login to access the app
  Given I am logged out
  When I login as a user
  Then I will have access to the app

  Scenario: There is a nav bar on every page
  Given I am logged in
  And I am on a page of the app
  And the nav bar is visible
  When I click an index on the nav bar
  Then I am directed to that index page
