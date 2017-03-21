class AddIvTherapyToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :iv_therapy_not_applicable, :string
    add_column :submissions, :current_iv_insertion_date_and_time, :datetime
    add_column :submissions, :therapy_type, :string
    add_column :submissions, :dressing_change_date_and_time, :datetime
    add_column :submissions, :iv_site, :json
    add_column :submissions, :other_iv_site, :string
    add_column :submissions, :condition, :json
    add_column :submissions, :start_change, :string
    add_column :submissions, :gauge, :integer
    add_column :submissions, :number_of_attempts, :integer
    add_column :submissions, :location, :string
  end
end
