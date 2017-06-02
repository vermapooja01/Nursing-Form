class CreateLabs < ActiveRecord::Migration[5.0]
  def change
    create_table :labs do |t|
      t.string :orders
      t.datetime :date_and_time_drawn

      t.timestamps
    end
  end
end
