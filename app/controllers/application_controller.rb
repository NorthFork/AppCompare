class ApplicationController < ActionController::Base
  protect_from_forgery
  force_ssl
  include SessionsHelper
  
  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:notice] = "Sorry, Access denied.  You are either not logged in or not authorized to do that." 
   # redirect_to :back
    redirect_to request.referer
  end

  helper_method :current_user
end
