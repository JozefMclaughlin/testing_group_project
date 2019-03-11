class Users
  include Capybara::DSL

  attr_reader :find_user, :new_first_name, :new_last_name, :new_full_name,:new_email, :new_password, :edit_first_name, :edit_last_name, :edit_full_name, :edit_email, :edit_password, :create_error_message, :edit_error_message, :incorrect_email

  def initialize
    @new_first_name = "Steve"
    @new_last_name = "Jobfulled"
    @new_full_name = "Steve Jobfulled"
    @new_email = "stevejobfulled@spartaglobal.com"
    @new_password = "Scoopedoo1"
    @edit_first_name = "Grayam"
    @edit_last_name = "Nobells"
    @edit_full_name = "Grayam Nobells"
    @edit_email = "grayamnobells@spartaglobal.com"
    @edit_password = "Scoopdywoop1"
    @create_error_message = "All fields must be filled. Password must be at least 8 characters, including 1 uppercase, 1 lowercase, and 1 number. Must be a @spartglobal.com email address."
    @edit_error_message = "All fields must be filled. Password must be at least 8 characters long, and include at least 1 uppercase letter, 1 lowercase letter, and 1 number. Must be a @spartglobal.com email address."
    @incorrect_email = "grayamnobells@hotmail.com"
  end

  def click_users
    click_on(find('.nav-item')[0])
  end

  def find_h1_text
    find('h1').text
  end

  def click_add_new
    click_on('Add New')
  end

  def fill_in_first_name first_name
    fill_in(:name => "first_name", :with => first_name)
  end

  def fill_in_last_name last_name
    fill_in(:name => "last_name", :with => last_name)
  end

  def fill_in_email email
    fill_in(:name => "email", :with => email)
  end

  def fill_in_password password
    fill_in(:name => "password", :with => password)
  end

  def select_cohort num
    all(".custom-select")[0].all("option")[num].click
  end

  def select_role num
    all(".custom-select")[1].all("option")[num].click
  end

  def click_save_user
    click_on("Save User")
  end

  def find_last_user
    all('tr')[-1]
  end

  def find_user_row email
    all_rows = all('tr')
    all_rows.each do |row|
      if row.text.include?(email)
        @find_user = row
      end
    end
    @find_user
  end

  def click_user name, email
    row = find_user_row email
    row.click_link(name)
  end

  def click_edit_user
    click_on("Edit")
  end

  def click_delete
    click_on("Delete")
  end

  def find_individual_email
    all(".col-3")[1].text
  end

  def find_all_users
    all("tr")
  end

  def error_message_text
    find('.incorrect-input').text
  end

  def click_any_user
    find_all_users[1].click_link
  end
end
