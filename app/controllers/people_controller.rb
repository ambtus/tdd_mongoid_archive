class PeopleController < ApplicationController
  def index
    @people = User.all
  end

  def show
    @person = User.find(params[:id])
  end
end
