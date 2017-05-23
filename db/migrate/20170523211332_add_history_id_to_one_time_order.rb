class AddHistoryIdToOneTimeOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :one_time_orders, :history_id, :integer
  end
end
