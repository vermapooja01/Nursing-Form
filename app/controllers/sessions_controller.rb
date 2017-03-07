class SessionsController < ApplicationController
  include SessionsHelper
  def new
    cookies[:referrer] = request.referrer
    redirect_to "https://adminapps.utep.edu/sso?redirectURL=#{create_session_url}"
  end

  def create
    user = User.from_sso(cookies[:UTEP_SE], cookies[:UTEP_SA])
    log_in(user) if user
    redirect_url = cookies.fetch(:referrer) {root_url}
    redirect_to redirect_url
  end

  def destroy
    log_out
    UTEPSSO.deauthenticate(cookies[:UTEP_SE], cookies[:UTEP_SA])
    redirect_to root_url
  end

  def log_in(user)
    #we create asession and set it to a users' database id
    session[:user_id] = user.id
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  
end
