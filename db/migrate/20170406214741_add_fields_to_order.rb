class AddFieldsToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :patient_name_order, :string
    add_column :orders, :ordered_by, :string
    add_column :orders, :verification_date_and_time, :datetime
    add_column :orders, :verifier_name, :string
  end
end
