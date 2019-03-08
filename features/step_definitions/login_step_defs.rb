Given("I load the homepage") do
  login.visit_homepage
  expect(current_url).to eq 'http://localhost:9292/'
end

Then("the login page is displayed") do
  expect(login.find_submit_button).to be true
end

When("I enter correct username") do
  login.enter_email
  sleep 1
end

When("I enter correct password") do
  login.enter_password
  sleep 1
end

When("I click login") do
  click_button("Submit")
  sleep 1
end

Then("the user is logged in") do
  expect(current_url).to eq "http://localhost:9292/users"
  sleep 1
end

Given("I am logged in") do
  login.visit_homepage
  login.login
end

Given(/^I am on the (.*) page of the app$/) do |page|
  visit_page page
  sleep 2
end

Given("I can see the logout button") do
  # login.find_logout_button
  expect(login.find_logout_button).to be true
end

When("I click logout") do
  login.click_logout_button
  sleep 1
end

Then("I am logged out") do
  expect(current_url).to eq "http://localhost:9292/"
end

Given("the nav bar is visible") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click an index on the nav bar") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I am directed to that index page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I try to access the users page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I cannot get past the login page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I try to access the cohorts page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I try to access the specialisations page") do
  pending # Write code here that turns the phrase above into concrete actions
end
