class UsersController < ApplicationController
  def index
    @users = User.all_user
  end

  def show
    @user = User.find(params[:id])
    @mitsus = @user.mitsus
  end
end
