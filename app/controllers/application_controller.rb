class ApplicationController < ActionController::Base
  include SessionsHelper
  protect_from_forgery with: :exception

  def is_admin?
    if current_user.kind == "admin"
      return true
    else
      redirect_to root_url
    end
  end

  def signed_in?
    return true unless logged_in?
  end



end
