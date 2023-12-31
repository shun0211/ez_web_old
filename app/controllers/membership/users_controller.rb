class UsersController < MembershipController
  def show
    @user = current_user
  end
end
