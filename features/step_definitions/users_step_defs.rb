Given("I am on the users page") do
  users.click_users
  expect(users.find_h1_text).to eq "Users"
end

When("I click onto Add New") do
  users.click_add_new
end

When("the new user page loads") do
  expect(users.find_h1_text).to eq 'Make A New User'
end

When("I enter the user's first name") do
  users.fill_in_first_name "Steve"
end

When("I enter the user's last name") do
  users.fill_in_last_name "Jobless"
  sleep 3
end

When("I enter the user's email address") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I enter the user's password") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I select the user's cohort") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I select the user's role") do
  pending # Write code here that turns the phrase above into concrete actions
end
Then("the new user is displayed on the users page") do
  pending # Write code here that turns the phrase above into concrete actions

end

When("I click on the user") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click the edit button") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I enter the user's passsword") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click Save User") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the user's details should be updated") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click on a user") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click on Delete") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the user's page should be deleted") do
  pending # Write code here that turns the phrase above into concrete actions
end
Then("their individual information is displayed on the page") do
  pending # Write code here that turns the phrase above into concrete actions
end


When("I click on the user tab") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("a list of all the users is displayed on the page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I enter the user's ") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I enter the user's Jobless") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I enter the user's steve@spartaglobal.com") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I enter the user's Password{int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I select the user's Engineering{int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I select the user's Trainee") do
  pending # Write code here that turns the phrase above into concrete actions
end
Then("I receive an {string} message") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end


When("I enter the user's Steve") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I select the user's ") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I enter a user's email address not of the form \/@spartaglobal") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I receive an error message") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I enter the user's Password") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I enter the user's password{int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I enter the user's PASSWORD{int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I select the user's Woof") do
  pending # Write code here that turns the phrase above into concrete actions
end
Then("I receive an ?? message") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I select the user's Bark") do
  pending # Write code here that turns the phrase above into concrete actions
end
