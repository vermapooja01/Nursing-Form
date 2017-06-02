class AddPatientIdToSubmissions < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :patient_id, :integer
    add_column :patients, :submission_id, :integer
    add_index :submissions, :patient_id
    add_index :patients, :submission_id
  end
end
