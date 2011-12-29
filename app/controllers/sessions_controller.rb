class SessionsController < ApplicationController
  def new
  end

  def create
    #if authenticated
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  # DELETE /session
  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
    #flash.notice = "You are logged out"
  end
end
