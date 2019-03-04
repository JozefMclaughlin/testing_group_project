require_relative '../lib/pages/cohorts'
require_relative '../lib/pages/roles'
require_relative '../lib/pages/specialization'
require_relative '../lib/pages/users'


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

end
