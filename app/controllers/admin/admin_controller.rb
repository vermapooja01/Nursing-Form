class Admin::AdminController < ApplicationController
  # before_filter :require_user
  layout 'admin'

  def index
    @patients = Patient.all
  end
end
