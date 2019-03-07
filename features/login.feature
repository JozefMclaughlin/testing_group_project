Feature: I am able login
  @test1
  Scenario: I am met with a login page
  Given I load the homepage
  Then the login page is displayed
  @test2
  Scenario: I am able to login
  Given I load the homepage
  When I enter correct username
  And I enter correct password
  And I click login
  Then the user is logged in
  @test3
  Scenario Outline: I am able to logout on every page
  Given I am logged in
  And I am on the <page> page of the app
  And I can see the logout button
  When I click logout
  Then I am logged out

  Examples:
  | page              |
  | users             |
  | cohorts           |
  | specialisations   |
  | roles             |
  | users/1           |
  | cohorts/1         |
  | specialisations/1 |
  | roles/1           |
  |                   |
  @test4
  Scenario Outline: Users cannot access the app if they are not logged in
  Given I load the homepage
  When I try to access the <page3> page
  Then I cannot get past the login page <pageName>

  Examples:
  | page3           | pageName        |
  | Users           | users           |
  | Cohorts         | cohorts         |
  | Specialisations | specialisations |
  | Roles           | roles           |
  @test5
  Scenario Outline: Users can use the navbar when logged in
  Given: I load the homepage
  And I am logged in
  When I try to access the <page4> page
  Then I am redirected to the relevant page <page4>

  Examples:
  | page4           |
  | Users           |
  | Cohorts         |
  | Specialisations |
  | Roles |
