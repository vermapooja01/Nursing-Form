class StaticPagesController < ApplicationController
  def home
    @submissions_in_progress = current_user.submissions.where(:completed => false)
  end
  def aboutus
  end
end
