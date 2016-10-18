class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login @user
      redirect_to @user
    else
      flash[:error] =[]
      @user.errors.full_messages.each do |error|
        flash[:error] << error.to_s
      end
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find_by(user_name: params[:user_name])
    user_events = @user.events
    @events = user_events.page(params[:page]).per(5)

  end

  def edit
    @user = User.find(params [:id])
  end

  def update
    @user = User.find(params [:user_name])
    if @user.update(user_params)
      redirect_to user_path
    end
  end

  def destroy
    user_id = params[:id]
    @user = User.find_by_id(user_id)
    @user.destroy
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:user_name, :first_name, :last_name, :email, :password)
  end

end
