class AddNeurologicalMuscularToSubmission < ActiveRecord::Migration[5.0]
  def change
    # Neurological
    add_column :submissions, :best_eye_opening_response
    add_column :submissions, :best_verbal_response
    add_column :submissions, :best_motor_response
    add_column :submissions, :patient_total_score
    add_column :submissions, :glasgow_coma_score_quality
    add_column :submissions, :gag_reflex
    add_column :submissions, :speech
    add_column :submissions, :hearing
    add_column :submissions, :face
    add_column :submissions, :tongue
    add_column :submissions, :strength
    add_column :submissions, :weakness
    add_column :submissions, :contracture
    add_column :submissions, :flaccid
    add_column :submissions, :spastic
    add_column :submissions, :paresis
    add_column :submissions, :other

  end
end
