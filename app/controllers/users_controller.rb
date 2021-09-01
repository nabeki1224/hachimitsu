class UsersController < ApplicationController
  def index
    @users = User.all_user.page(params[:page]).per(20)
    @relationship = Relationship.new
  end

  def show
    @user = User.find(params[:id])
    @mitsus = @user.mitsus.page(params[:page]).per(20)
    @relationship = Relationship.new
  end
end
