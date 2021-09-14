class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
    @users = User.find_by_id(params[:id])
  end

  has_many :blogs,    dependent: :destroy
  has_many :comments
end
