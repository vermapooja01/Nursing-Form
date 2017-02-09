class CreateSubmissions < ActiveRecord::Migration[5.0]
  def change
    create_table :submissions do |t|
      t.string :patient_initials
      t.integer :age
      t.string :gender
      t.string :admitting_primary_medical_diagnosis
      t.integer :user_id
      t.datetime :week

      t.timestamps
    end
  end
end
