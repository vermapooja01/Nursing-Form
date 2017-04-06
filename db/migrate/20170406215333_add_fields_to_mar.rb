class AddFieldsToMar < ActiveRecord::Migration[5.0]
  def change
    add_column :mars, :medication_mar, :string
    add_column :mars, :prescribed_by, :string
    add_column :mars, :date_and_time, :datetime 
  end
end
