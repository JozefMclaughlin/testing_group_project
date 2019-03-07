Feature: I am able login

  Scenario: I am met with a login page
  Given I load the homepage
  Then the login page is displayed

  Scenario: I am able to login
  Given I load the homepage
  When I enter correct username
  And I enter correct password
  And I click login
  Then the user is logged in

  Scenario Outline: I am able to logout on every page
  Given I am logged in
  And I am on the <page> page of the app
  And I can see the logout button
  When I click logout
  Then I am logged out

  Examples:
  | page            |
  | users           |
  | cohorts         |
  | specialisations |

  Scenario Outline: There is a nav bar on every page
  Given I am logged in
  And I am on the <page2> page of the app
  And the nav bar is visible
  When I click an index on the nav bar
  Then I am directed to that index page

  Examples:
  | page2           |
  | users           |
  | cohorts         |
  | specialisations |

  Scenario Outline: Users cannot access the app if they are not logged in
  Given I am logged out
  When I try to access the <page3> page
  Then I cannot get past the login page

  Examples:
  | page3           |
  | users           |
  | cohorts         |
  | specialisations |
