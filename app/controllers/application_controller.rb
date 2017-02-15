class ApplicationController < ActionController::Base
  include SessionsHelper
  protect_from_forgery with: :exception

  private
    # Redirects to login page if a user has not logged in
    def logged_in_user
      unless logged_in?
        redirect_to root_url
      end
    end
    
    # Redirect to the root if the current user is not admin
    # def admin_user
    #   redirect_to(root_url) unless current_user.admin?
    # end

end
