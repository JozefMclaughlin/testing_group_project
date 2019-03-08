class Specialization
  include Capybara::DSL

  HOMEPAGE_URL = 'http://localhost:9292/'

  def click_specialization_link
    click_link('Specialisations')
  end

  def click_specialization value
    click_link(value)
  end

  def click_edit
    click_button('Edit')
  end

  def click_add
    click_button('Add New')
  end

  def click_save
    click_button('Save')
  end

  def click_delete
    click_button('Delete')
  end

  def enter_specialization value
    fill_in('specialisation_name', :with => value)
  end

  def check_specialization value
    find_link(value).visible?
  end

  def list_table_header
    find(:css, 'tr').text
    # find(:css, 'td').text
  end

  def check_list_table
    find('tr').visible?
    # find(:css, 'td').text
  end

  def length_of_table
    all(:css, 'td').length
  end
  
  def error_message
    find(:css, 'p').text
  end

end
