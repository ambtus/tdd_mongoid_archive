class PseudsController < ApplicationController

  before_filter :find_user

  def index
    @pseuds = @user.pseuds
  end

  def show
    @pseud = Pseud.find(params[:id])
  end

  def new
    @pseud = Pseud.new
  end

  def edit
    @pseud = Pseud.find(params[:id])
  end

  def create
    @pseud = @user.pseuds.new(params[:pseud])

    if @pseud.save
      redirect_to(@pseud, :notice => 'Pseud was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    @pseud = Pseud.find(params[:id])

    if @pseud.update_attributes(params[:pseud])
      redirect_to(@pseud, :notice => 'Pseud was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @pseud = Pseud.find(params[:id])
    @pseud.destroy

    redirect_to(pseuds_url)
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end
end
