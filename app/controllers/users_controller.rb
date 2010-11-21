class UsersController < ApplicationController
  def leave
    @user = User.find params[:user_id]
  end

  def update
    if params[:pseud_id]
      @user = User.find params[:user_id]
      @user.make_default(params[:pseud_id])
      unless @user.save
        flash[:alert] = something went wrong
      end
      redirect_to user_pseuds_path(@user)
    end
  end
end
