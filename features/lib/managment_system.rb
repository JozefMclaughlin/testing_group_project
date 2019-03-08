require_relative '../lib/pages/cohorts'
require_relative '../lib/pages/roles'
require_relative '../lib/pages/specialization'
require_relative '../lib/pages/users'
require_relative '../lib/pages/login'



module ManagmentSystem

  def cohorts
    Cohorts.new
  end
  def roles
    Roles.new
  end
  def specialization
    Specialization.new
  end
  def users
    Users.new
  end

  def login
    LogIn.new
  end

  def visit_page page
    visit("http://localhost:9292/#{page}")
  end

  def click_nav_link link
    click_link("#{link}")
  end

  def check_headers header
    find(:xpath, '//h1').text
  end

end
