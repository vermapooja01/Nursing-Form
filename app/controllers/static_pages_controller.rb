class StaticPagesController < ApplicationController
  def home
    if current_user
      @submissions_in_progress = current_user.submissions.where(:completed => false)
    end
  end
  def aboutus
  end

  # def signup
  #    form_for @user do |f|
  #     - if @user.errors.any?
  #       #error_explanation
  #         %h2 = "#{pluralize(@user.errors.count, "error")} prohibited this user from being saved:"
  #         %ul
  #           - @user.errors.full_messages.each do |msg|
  #             %li= msg
  #
  #     .field
  #       = f.label :first_name
  #       = f.text_field :first_name
  #     .field
  #       = f.label :last_name
  #       = f.text_field :last_name
  #     .field
  #       = f.label :middle_name
  #       = f.text_field :middle_name
  #     .field
  #       = f.label :kind
  #       = f.text_field :kind
  #     .actions
  #       = f.submit 'Save'
  #
  # end

end
