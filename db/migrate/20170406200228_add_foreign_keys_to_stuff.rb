class AddForeignKeysToStuff < ActiveRecord::Migration[5.0]
  def change
    add_column :labs, :history_id, :integer
    add_index :labs, :history_id
    add_column :mars, :history_id, :integer
    add_index :mars, :history_id
    add_column :prns, :history_id, :integer
    add_index :prns, :history_id
    add_column :orders, :history_id, :integer
    add_index :orders, :history_id
  end
end
