class Cohorts
  include Capybara::DSL

  HOMEPAGE_URL = 'http://localhost:9292/'

  # Clicks the cohorts link in the navbar
  def click_cohorts_link
    click_link('Cohorts')
  end

  # Checks to see if a table header with a certain name exists
  def list_cohorts_table_header
    find(:css, 'tr').text
  end

  # Checks to see if a table actually exists
  def check_cohorts_table
    find('tr').visible?
  end

  # Click a cohort that exists at the stated value in the table
  def click_cohort value
    click_link(value)
  end

  # Checks whether a specific cohort exists in the cohort table
  def find_cohort value
    find_link(value).text
  end

  # Clicks the add new button on the Cohorts page
  def click_add_new_cohort
    click_button('Add New')
  end

  # Enters a name for a cohort
  def enter_cohort_name value
    fill_in('cohort_name', :with => value)
  end

  def check_cohort_name_error
    find('.incorrect-input').text
  end

  # Selects a specialization from the specialization table for a cohort
  def select_cohort_specialisation value
    select(value, from: "specialisation_id")
  end

  # Clicks the Save Cohort button
  def click_save_cohort
    click_button('Save Cohort')
  end

  def click_edit_cohort
    click_button('Edit')
  end

  def click_delete_cohort
    click_button('Delete')
  end

  def check_cohort_is_deleted
    all(:css, 'td').length
  end

  def empty_cohort_name
    fill_in('cohort_name', with: '')
  end

  def read_cohort_name
    find(:css, 'h1').text
  end

  def confirm_delete
    click_button('Yes')
  end

end
