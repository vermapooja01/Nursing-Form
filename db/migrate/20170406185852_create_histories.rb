class CreateHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :histories do |t|
      t.string :name
      t.datetime :date_of_admission
      t.integer :mr_number

      t.timestamps
    end
  end
end
