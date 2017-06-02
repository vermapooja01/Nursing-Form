class CreateOneTimeOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :one_time_orders do |t|
      t.datetime :order_date
      t.string :order_mars
      t.string :order_prescribed_by
      t.string :prescriber_initials
      t.string :nurse_signature
      t.string :nurse_initials
      t.timestamps
    end
  end
end
