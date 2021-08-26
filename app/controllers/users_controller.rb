class UsersController < ApplicationController
  def index
    @users = User.all_user.page(params[:page]).per(20)
  end

  def show
    @user = User.find(params[:id])
    @mitsus = @user.mitsus.page(params[:page]).per(20)
  end
end
