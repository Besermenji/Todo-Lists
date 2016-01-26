class SessionsController < ApplicationController
  skip_before_action :ensure_login, only: [:new, :create]

  def new
  end

  def create




    user = User.find_by_username(login_params[:username])
    # If the user exists AND the password entered is correct.
    if user && user.authenticate(login_params[:password])
      # Save the user id inside the browser cookie. This is how we keep the user 
      # logged in when they navigate around our website.
      session[:user_id] = user.id
      flash[:notice] ="Logged in successfully"   
      redirect_to '/'
    else
      # If user's login doesn't work, send them back to the login form.
      flash[:alet] = "Login Failed!"
      redirect_to '/login'
    end




  end

  def destroy
    session[:user_id]=nil
    redirect_to login_path
    flash[:notice] = "Logged out successfully"
  end

  def login_params
    params.require(:user).permit(:username, :password)
  end
end
