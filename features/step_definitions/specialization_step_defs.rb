When("I click the Specialization link") do
  specialization.click_specialization_link
end

Then("the page displaying a list of all Specializations is open") do
  expect(current_url).to eq 'http://localhost:9292/specialisations'
  expect(specialization.list_table_header).to eq 'Specialisation Name'
  specialization.check_list_table
end


When("I click a specialization") do
  specialization.click_specialization 'SDET'
end

Then("I arrive at the individual specialization show page") do
  expect(current_url).to eq 'http://localhost:9292/specialisations/1'
end

When("I click the add new Specialization link") do
  specialization.add_specialization_link
  expect(current_url).to eq 'http://localhost:9292/specialisations/new'
end

When("I enter a new Specialization") do
  specialization.enter_specialization 'test3'
  sleep 3
end

When("click the save click") do
  specialization.click_save
  sleep 3
end

Then("I should be on the Specialization page with the new Specialization added") do
  expect(current_url).to eq 'http://localhost:9292/specialisations'
  specialization.check_new_specialization_added 'test3'
  sleep 3
end

Then("I should receive an error about the specialization having no name") do
  expect(specialization.error_message).to eq 'Please enter a value'
end

When("I click the edit link") do
  specialization.click_edit
end

When("I edit the Specialization") do
  specialization.enter_specialization 'SDET'
end

Then("I should be on the Specialization page with the edited Specialization updated") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click a Specialization") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click the delete link") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be on the Specialization page with the deleted Specialization removed") do
  pending # Write code here that turns the phrase above into concrete actions
end
