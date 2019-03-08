class Users
  include Capybara::DSL


  def click_users
    click_on(find('.nav-item')[0])
  end

  def find_h1_text
    find('h1').text
  end

  def click_add_new
    click_on('Add New')
  end

  def fill_in_first_name
    fill_in 'first_name', :with "Steve"
  end

  def fill_in_last_name last_name
    fill_in 'last_name', :with last_name
  end

end
