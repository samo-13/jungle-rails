class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by_email(params[:email])
    # If the user exists/the password is correct
    if user && user.authenticate(params[:password])
      # Then... save the user id inside the browser cookie to keep the user logged in as they navigate the website.
      session[:user_id] = user.id
      redirect_to '/', notice: "You are logged in."
    else
      flash.now.alert = "Oops, your email or password is invalid"
      redirect to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/', notice: "You are logged out."
  end
end
