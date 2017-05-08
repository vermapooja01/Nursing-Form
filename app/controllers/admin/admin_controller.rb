class Admin::AdminController < ApplicationController
  before_filter :logged_in_user
  before_filter :require_admin

  layout 'admin'

  def index
    @patients = Patient.all
  end

  private

  def require_admin
    #redirect_to root_url unless current_user.admin?
  end
end
