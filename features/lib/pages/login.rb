class LogIn
  include Capybara::DSL

  HOMEPAGE_URL = 'http://localhost:9292/'

  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def find_submit_button
    find_button("Submit").visible?
  end

  def find_logout_button
    # find(:css, "form='log-out'").visible?
    find_button(:text => "Log Out").visible?
  end

  def enter_email
    fill_in(:name => "email", :with => 'admin@spartaglobal.com')
  end

  def enter_password
    fill_in('password', :with => 'Password1')
  end

  def click_submit_button
    click_button('Submit')
  end

  def click_logout_button
    find_button(:text => "Log Out").click
  end

  def login
    enter_email
    enter_password
    click_submit_button
  end

  def check_error_message
    find(:css, ".incorrect-input").visible?
  end

end
