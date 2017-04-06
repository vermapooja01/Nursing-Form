class AddForeignKeysToHistories < ActiveRecord::Migration[5.0]
  def change
    add_column :histories, :lab_id, :integer
    add_index :histories, :lab_id
    add_column :histories, :mar_id, :integer
    add_index :histories, :mar_id
    add_column :histories, :prn_id, :integer
    add_index :histories, :prn_id
    add_column :histories, :order_id, :integer
    add_index :histories, :order_id
  end
end
