class AddFieldsToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :patient_name_order, :string
  end
end
