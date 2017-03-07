class StaticPagesController < ApplicationController
  def home
    if current_user
      @submissions_in_progress = current_user.submissions.where(:completed => false)
    end
  end
  def aboutus
  end

  def signup
  end

end
