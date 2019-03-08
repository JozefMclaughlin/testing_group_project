class Roles
  include Capybara::DSL

  def visit_roles
    visit('http://localhost:9292/roles')
  end

  def find_trainee
    find("a[href='/roles/2']").text
  end

  def find_trainer
    find("a[href='/roles/1']").text
  end

  def find_admin
    find("a[href='/roles/3']").text
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
    find("a[href='/roles/4']").text
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
    find("a[href='/roles/4']").click
  end
  def click_delete
    click_button('Delete')
  end
  def check_delete
    find("a[href='/roles/4']").visable?
  end
end
