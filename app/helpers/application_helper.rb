module ApplicationHelper
  def current_user
    # return User.first if Rails.env.development?
    @current_user ||= User.find_by(id: session[:user_id])
  end
end
