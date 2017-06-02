class AddIvInsertionToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :iv_insertion_type, :string
    add_column :submissions, :iv_insertion_gauge, :string
    add_column :submissions, :iv_insertion_length, :integer
    add_column :submissions, :iv_insertion_site, :string
    add_column :submissions, :iv_insertion_site_other, :string
    add_column :submissions, :iv_insertion_number_of_attempts, :integer
    add_column :submissions, :iv_insertion_flush, :string
    add_column :submissions, :iv_insertion_site_of_attempts, :integer
    add_column :submissions, :iv_insertion_site_of_attempts_other, :string
    add_column :submissions, :patient_tolerance_of_procedure, :string
    add_column :submissions, :iv_insertion_date_time, :datetime
    add_column :submissions, :iv_insertion_name, :string
  end
end
