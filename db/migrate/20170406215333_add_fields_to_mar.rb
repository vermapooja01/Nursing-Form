class AddFieldsToMar < ActiveRecord::Migration[5.0]
  def change
    add_column :mars, :medication_mar, :string
    add_column :mars, :prescribed_by, :string
    add_column :mars, :date_and_time, :datetime
    add_column :mars, :order_date, :datetime
    add_column :mars, :order_mars, :string
    add_column :mars, :order_prescribed_by, :string
    add_column :mars, :prescriber_initials, :string
    add_column :mars, :nurse_signature, :string
    add_column :mars, :nurse_initials, :string
  end
end
