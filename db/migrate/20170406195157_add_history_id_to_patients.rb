class AddHistoryIdToPatients < ActiveRecord::Migration[5.0]
  def change
    add_column :patients, :history_id, :integer
    add_column :histories, :patient_id, :integer
    add_index :patients, :history_id
    add_index :histories, :patient_id
  end
end
