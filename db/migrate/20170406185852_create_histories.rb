class CreateHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :histories do |t|
      t.string :patient_name_history
      t.datetime :date_of_admission
      t.integer :mr_number

      t.timestamps
    end
  end
end
