class AddIvTherapyToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :na, :string
    add_column :submissions, :current_iv_insertion_date_and_time, :string
    add_column :submissions, :type_two, :string
    add_column :submissions, :iv_site, :string
    add_column :submissions, :condition, :string
    add_column :submissions, :start_change, :string
  end
end
