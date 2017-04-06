class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.datetime :date_time
      t.string :orders
      t.string :verification

      t.timestamps
    end
  end
end
