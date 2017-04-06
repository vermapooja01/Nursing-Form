class CreateMars < ActiveRecord::Migration[5.0]
  def change
    create_table :mars do |t|
      t.string :name
      t.datetime :month_year
      t.integer :mr_number
      t.string :allergies

      t.timestamps
    end
  end
end
