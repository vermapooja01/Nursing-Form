class AddMarIdToOneTimeOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :one_time_orders, :mar_id, :integer
  end
end
