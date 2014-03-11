class UsersController < ApplicationController
  def create
    user = User.create(user_params)
    session[:identity_id] = user.identities.first.id
    redirect_to dashboard_path
  end

  private

  def user_params
    params.require(:user).permit!
  end
end
