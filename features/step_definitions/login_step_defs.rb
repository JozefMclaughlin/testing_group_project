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

When(/^I try to access the (.*) page$/) do |link|
  login.click_logout_button
  click_nav_link link
end

Then(/^I cannot get past the login page (.*)$/) do |pageName|
  expect(current_url).to eq "http://localhost:9292/#{pageName}"
  expect(login.check_error_message).to be true
end

When(/^I try to access the (.*) page when logged in$/) do |link|
  click_nav_link link
end

Then(/^I am redirected to the relevant page (.*)$/) do |header|
  check_headers header
  expect(check_headers "#{header}").to eq header
end
