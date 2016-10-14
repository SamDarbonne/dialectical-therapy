class SessionsController < ApplicationController
  
  def new
      @user = User.new
      # render :new
  end

  def create
    user_params = params.require(:user).permit(:user_name, :password)

    @user = User.confirm(user_params)
    if @user
      login(@user)
      flash[:notice] = "Successfully logged in as #{@user.user_name}!"
      redirect_to @user
    else
      puts 'error'
      flash[:error] = "User Name and Password do not match"
      redirect_to login_path
    end
  end

  def destroy
    logout
    flash[:notice]= "Successfully logged out."
    redirect_to root_path
  end
end
