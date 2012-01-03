module SessionsHelper
  # brian inserted 2012-01-02 but don't think it is being used in code
  #from http://eureka.ykyuen.info/2011/03/10/rails-redirect-previous-page-after-devise-sign-in/
  
  def deny_access
    store_location
    redirect_to new_user_session_path
  end

  # add back anyone_signed_in? method after Oliver's comment @ 2011-03-12
  def anyone_signed_in?
    !current_user.nil?
  end

  private

    def store_location
      session[:return_to] = request.fullpath
    end

    def clear_stored_location
      session[:return_to] = nil
    end

end

