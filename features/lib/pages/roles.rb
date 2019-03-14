class Roles
  include Capybara::DSL

  def visit_roles
    visit('http://localhost:9292/roles')
  end


  def find_trainee
    find_link("Trainee").text
  end

  def find_trainer
    find_link("Trainer").text
  end

  def find_admin
    find_link("Admin").text
  end

  def click_role
    click_link('Trainee')
  end

  def click_new
      click_button('Add New')
  end

  def add_name
    fill_in('role_name', with: 'test_role')
  end

  def click_save
    click_button('Save role')
  end

  def check_new
    find_link("test_role").text
  end

  def check_new_error
    find('.incorrect-input').text
  end
  def click_edit
    click_button('Edit')
  end
  def edit_name
    fill_in('role_name', with: 'test_edit')
  end
  def click_test_role
    click_link("test_role")
  end

  def check_edit
    find_link("test_edit").text
  end

  def click_edit_role
    click_link('test_edit')
  end
  def click_delete
    click_button('Delete')
  end
  def check_delete
    all(:css, 'td').length
  end
  def confirm_delete
    click_button('Yes')
  end
end
