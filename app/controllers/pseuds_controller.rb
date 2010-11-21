class PseudsController < ApplicationController

  before_filter :find_user

  def index
    @pseuds = @user.pseuds
  end

  def show
    @pseud = @user.pseuds.criteria.id(params[:id]).first
  end

  def new
    @pseud = @user.pseuds.new
  end

  def edit
    @pseud = @user.pseuds.criteria.id(params[:id]).first
  end

  def create
    @user.pseuds.build(params[:pseud])

    if @user.save
      redirect_to(user_pseuds_path(@user), :notice => 'Pseud was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    @pseud = @user.pseuds.criteria.id(params[:id]).first
    @pseud.attributes = params[:pseud]
    if @user.save
      redirect_to(User_pseuds_path(@user), :notice => 'Pseud was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end
end
