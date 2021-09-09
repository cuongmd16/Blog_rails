class UsersController < ApplicationController
  def index
  end
  def show
    @users = User.find_by_id(params[:id])
  end
end
