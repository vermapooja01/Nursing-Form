class AddNeurologicalMuscularToSubmission < ActiveRecord::Migration[5.0]
  def change
    # Neurological
    add_column :submissions, :best_eye_opening_response, :string
    add_column :submissions, :best_verbal_response, :string
    add_column :submissions, :best_motor_response, :string
    add_column :submissions, :patient_total_score, :integer
    add_column :submissions, :glasgow_coma_score_quality, :string
    add_column :submissions, :gag_reflex, :string
    add_column :submissions, :speech, :string
    add_column :submissions, :hearing, :string
    add_column :submissions, :face, :string
    add_column :submissions, :tongue, :string
    add_column :submissions, :strength, :string
    add_column :submissions, :weakness, :string
    add_column :submissions, :contracture, :string
    add_column :submissions, :flaccid, :string
    add_column :submissions, :spastic, :string
    add_column :submissions, :paresis, :string
    add_column :submissions, :other, :string

  end
end
