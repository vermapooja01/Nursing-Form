class CreateNurseActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :nurse_activities do |t|
      t.integer :shift_number
      t.string :initials
      t.integer :mar_id

      t.timestamps
    end
  end
end
