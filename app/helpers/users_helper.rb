module UsersHelper
  before_action :authenticate_user!

  def show
    @daily_teacher
  end
end
