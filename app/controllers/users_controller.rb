class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to @user
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def edit
    @user = User.find(params [:id])
  end

  def update
    @user = User.find(params [:id])
    if @user.update(user_params)
      redirect user_path
    end
  end

  def destroy
    user_id = params[:id]
    @user = User.find_by_id(user_id)
    @user.destroy
    redirect root_path
  end

  private
  def user_params
    params.require(:user).permit(:user_name, :first_name, :last_name, :email, :password)
  end
end
