class AddFieldsToPrn < ActiveRecord::Migration[5.0]
  def change
    add_column :prns, :patient_name_prn, :string
    add_column :prns, :mr_number_prn, :integer
    add_column :prns, :month_year_prn, :datetime
    add_column :prns, :allergies_prn, :string
    add_column :prns, :medication_name, :string
    add_column :prns, :medication_dose, :string
    add_column :prns, :medication_route, :string
    add_column :prns, :medication_date_and_time, :datetime
    add_column :prns, :medication_by, :string
    add_column :prns, :nurse_signature_prn, :string
    add_column :prns, :nurse_initials_prn, :string
  end
end
