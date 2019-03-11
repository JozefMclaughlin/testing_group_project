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
  users.fill_in_first_name users.new_first_name
end

When("I enter the user's last name") do
  users.fill_in_last_name users.new_last_name
end

When("I enter the user's email address") do
  users.fill_in_email users.new_email
end

When("I enter the user's password") do
  users.fill_in_password users.new_password
end

When("I select the user's cohort") do
  users.select_cohort rand(0..1)
end

When("I select the user's role") do
  users.select_role rand(0..2)
end

When("I click Save User") do
  users.click_save_user
end

Then("the new user is displayed on the users page") do
  puts users.find_user
  expect(users.find_last_user.text).to include users.new_full_name
  expect(users.find_last_user.text).to include users.new_email
end

Then("so I delete the user") do
  users.click_users
  users.click_user users.new_full_name, users.new_email
  users.click_delete
  expect(users.find_user_row(users.new_email)).to eq nil
end

Then("so I delete the edited user") do
  users.click_users
  users.click_user users.edit_full_name, users.edit_email
  users.click_delete
  expect(users.find_user_row(users.new_email)).to eq nil
end

When("I click on the user") do
  users.click_user users.new_full_name, users.new_email
end

When("I click the edit button") do
  users.click_edit_user
end

When("I change the user's first name") do
  users.fill_in_first_name users.edit_first_name
end

When("I change the user's last name") do
  users.fill_in_last_name users.edit_last_name
end

When("I change the user's email address") do
  users.fill_in_email users.edit_email
end

When("I change the user's password") do
  users.fill_in_password users.edit_password
end

Then("the user's details should be updated") do
  users.click_users
  expect(users.find_user_row(users.edit_email).text).to include users.edit_full_name
  expect(users.find_user_row(users.edit_email).text).to include users.edit_email
end

When("I click on Delete") do
  users.click_delete
end

Then("the user's page should be deleted") do
  expect(users.find_user_row(users.edit_email)).to eq nil
end

Then("their individual information is displayed on the page") do
  expect(users.find_individual_email).to eq users.new_email
end

Then("a list of all the users is displayed on the page") do
  expect(users.find_all_users).to_not eq nil
end

When(/^I enter the user's first name (.*)$/ ) do |firstname|
  users.fill_in_first_name firstname
end

When(/^I enter the user's last name (.*)$/ ) do |lastname|
  users.fill_in_last_name lastname
end

When(/^I enter the user's email address (.*)$/ ) do |email|
  users.fill_in_email email
end

When(/^I enter the user's password (.*)$/ ) do |password|
  users.fill_in_password password
end

When("I click on any user") do
  users.click_any_user
end

When("I enter a user's email address not of the form \/@spartaglobal") do
  users.fill_in_email users.incorrect_email
end

Then("I receive a create user error message") do
  expect(users.error_message_text).to eq users.create_error_message
end

Then("I receive a edit user error message") do
  expect(users.error_message_text).to eq users.edit_error_message
end
