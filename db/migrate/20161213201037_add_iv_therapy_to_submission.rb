class AddIvTherapyToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :na
    add_column :submissions, :current_iv_insertion_date_and_time
    add_column :submissions, :therapy_type
    add_column :submissions, :iv_site
    add_column :submissions, :condition
    add_column :submissions, :start_change
  end
end
