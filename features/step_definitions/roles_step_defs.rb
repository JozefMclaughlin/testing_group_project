Given("navigate to the roles page") do
  roles.visit_roles

end

Given("I am redirected to the roles page which shows a list of roles available") do
  expect(current_url).to eq 'http://localhost:9292/roles'
end

Then("I can see that the admin, trainee and trainer roles are available") do
  expect(roles.find_trainee).to eq 'Trainee'
  expect(roles.find_trainer).to eq 'Trainer'
  expect(roles.find_admin).to eq 'Admin'
end


When ("I click on a role link") do
  roles.click_role
end


When("I click on a role") do
  roles.click_edit_role
end

When ("I click on an existing role") do
  roles.click_test_role
end

Then("I am directed to the individual page for that role") do
  expect(current_url).to eq 'http://localhost:9292/roles/2'
end

When("I click the Add New button") do
  roles.click_new
end

When("I enter a name for the new Role") do
  roles.add_name
end

When("click the Save role button") do
  roles.click_save
end

Then("there is a new role on the Roles page with the same value I entered") do
  expect(roles.check_new).to eq 'test_role'
end

Then("an error will appear") do
  expect(roles.check_new_error).to eq 'Please enter a value'
end


Given("I click the Edit role button") do
  roles.click_edit
end

Given("I input a different Role name") do
  roles.edit_name
end

Then("the role will be updated with the new name") do
  roles.visit_roles
  expect(roles.check_edit).to eq 'test_edit'
end


When("I click the Delete button") do
  roles.click_delete
  roles.confirm_delete
end

Then("the role is no longer visible on the Roles page") do
  expect(roles.find_trainee).to eq 'Trainee'
  expect(roles.find_trainer).to eq 'Trainer'
  expect(roles.find_admin).to eq 'Admin'
  expect(roles.check_delete).to eq 3
end
