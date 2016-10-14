class SessionsController < ApplicationController
  def create
    user_params = params.require(:user).permit(:email, :password)

    @user = User.confirm(user_params)
    if @user
      login(@user)

      flash[:notice] = "Successfully logged in as #{@user.name}!"
      redirect_to @user
    else
      flash[:error] = "User Name and Password do not match"
      redirect_to login_path
  end

  def destroy
    logout
    flash[:notice]= "Successfully logged out."
    redirect_to root_path
  end
end
