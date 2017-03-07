class AddPeripheralIvDocumentationToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :peripheral_iv_insertion_change_date_and_time, :datetime
    add_column :submissions, :peripheral_iv_insertion_site, :string
    add_column :submissions, :number_of_attempts_for_peripheral_iv_insertion, :integer
    add_column :submissions, :catheter_gauge, :string
    add_column :submissions, :initials, :string
  end
end
