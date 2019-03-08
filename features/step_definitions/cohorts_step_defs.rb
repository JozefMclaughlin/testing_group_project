When("I click the Cohorts tab") do
  cohorts.click_cohorts_link
end

Then("I should be taken to the Cohorts page") do
  expect(current_url).to eq 'http://localhost:9292/cohorts'
end

Then("I should be able to see a list of all cohorts") do
  expect(cohorts.list_cohorts_table_header).to eq 'Cohort Name'
  expect(cohorts.check_cohorts_table).to be true
end

When("I click on a cohort") do
  cohorts.click_cohort 'Engineering-22'
end

When("I click on a new cohort") do
  cohorts.click_cohort 'cohort_test'
end

Then("I should be taken to that cohort's details page") do
  expect(current_url).to eq 'http://localhost:9292/cohorts/1'
end

When("I click Add New") do
  cohorts.click_add_new_cohort
end

When("I enter a name for my cohort") do
  cohorts.enter_cohort_name 'cohort_test'
end

When("I select a specialization for my cohort") do
  cohorts.select_cohort_specialisation 'Management'
end

When("I click Save Cohort") do
  cohorts.click_save_cohort
end

Then("My new cohort should be added to the cohorts list") do
  expect(cohorts.find_cohort 'cohort_test').to eq 'cohort_test'
end

Then("the error will display showing a lack of cohort name") do
  expect(cohorts.check_cohort_name_error).to eq 'Please enter a value'
end

When("I click Edit on that cohort's page") do
  cohorts.click_edit_cohort
end

Then("The cohort's new name should be saved") do
  expect(cohorts.read_cohort_name).to eq 'cohort_edit_test'
end

Then("an error code must be displayed and the cohort shouldn't save") do
  expect(cohorts.check_cohort_name_error).to eq 'Please enter a value'
end

When("I leave the name field blank") do
  cohorts.empty_cohort_name
end

When("I change the current name to the desired name") do
  cohorts.enter_cohort_name 'cohort_edit_test'
end

When("I click on the created cohort") do
  cohorts.click_cohort 'cohort_edit_test'
end

When("I click Delete on that cohort's page") do
  cohorts.click_delete_cohort
end

Then("The cohort should be deleted") do
  expect(cohorts.check_cohort_is_deleted).to eq 2
end
