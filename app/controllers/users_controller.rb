class UsersController < ApplicationController
  def leave
    @user = User.find params[:user_id]
  end
end
