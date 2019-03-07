class LogIn
  include Capybara::DSL

  HOMEPAGE_URL = 'http://localhost:9292/'

  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def find_submit_button
    find_button("Submit").visible?
  end

end
