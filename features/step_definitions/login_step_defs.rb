Given("I load the homepage") do
  login.visit_homepage
  expect(current_url).to eq 'http://localhost:9292/'
end

Then("the login page is displayed") do
  expect(login.find_submit_button).to be true
end

When("I enter correct username") do
  fill_in(:name => "email", :with => 'admin@spartaglobal.com')
  sleep 3
end

When("I enter correct password") do
  fill_in('password', :with => 'Password1')
  sleep 3
end

When("I click login") do
  click_button("Submit")
  sleep 3
end

Then("the user is logged in") do
  expect(current_url).to eq "http://localhost:9292/users"
  sleep 3
end

Given("I am logged in") do
  pending
end

Given("I am on the users page of the app") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I can see the logout button") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click logout") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I am logged out") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am on the cohorts page of the app") do
  pending # Write code here that turns the phrase above into concrete actions
end


Given("I am on the specialisations page of the app") do
  pending # Write code here that turns the phrase above into concrete actions
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

Given("I am logged out") do
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
