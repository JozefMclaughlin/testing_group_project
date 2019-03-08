class Specialization
  include Capybara::DSL

  HOMEPAGE_URL = 'http://localhost:9292/'

  def click_specialization_link
    click_link('Specialisations')
  end

  def click_edit
    click_button('Edit')
  end

  def list_table_header
    find(:css, 'tr').text
    # find(:css, 'td').text
  end

  def check_list_table
    find('tr').visible?
    # find(:css, 'td').text
  end

  def click_specialization value
    click_link(value)
  end

  def add_specialization_link
    click_button('Add New')
  end

  def enter_specialization value
    fill_in('specialisation_name', :with => value)
  end

  def click_save
    click_button('Save')
  end

  def check_new_specialization_added value
    find_link(value).visible?
  end

  def error_message
    find(:css, 'p').text
  end

end
