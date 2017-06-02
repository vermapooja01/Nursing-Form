class AddNeurologicalMuscularToSubmission < ActiveRecord::Migration[5.0]
  def change
    # Neurological
    #Pupils =================================
    add_column :submissions, :pupils_brisk_left, :string
    add_column :submissions, :pupils_brisk_right, :string
    add_column :submissions, :pupils_sluggish_left, :string
    add_column :submissions, :pupils_sluggish_right, :string
    add_column :submissions, :pupils_fixed_left, :string
    add_column :submissions, :pupils_fixed_right, :string
    add_column :submissions, :pupils_size_left, :string
    add_column :submissions, :pupils_size_right, :string
    # Comma Score
    # Eye Opening Response
    add_column :submissions, :best_eye_opening_response_values, :json
    add_column :submissions, :best_verbal_response_values, :json
    add_column :submissions, :best_motor_response_values, :json

    add_column :submissions, :best_eye_opening_response, :string
    add_column :submissions, :best_verbal_response, :string
    add_column :submissions, :best_motor_response, :string
    add_column :submissions, :patient_total_score, :integer
    add_column :submissions, :glasgow_coma_score_quality, :json
    # -----------------------

    add_column :submissions, :gag_reflex, :string
    add_column :submissions, :speech, :json
    add_column :submissions, :hearing, :string
    add_column :submissions, :face, :string
    add_column :submissions, :tongue, :string
    add_column :submissions, :strength, :boolean
    add_column :submissions, :strength_weakness_rue, :boolean
    add_column :submissions, :strength_weakness_lue, :boolean
    add_column :submissions, :strength_weakness_rle, :boolean
    add_column :submissions, :strength_weakness_lle, :boolean
    add_column :submissions, :strength_contracture_rue, :boolean
    add_column :submissions, :strength_contracture_lue, :boolean
    add_column :submissions, :strength_contracture_rle, :boolean
    add_column :submissions, :strength_contracture_lle, :boolean
    add_column :submissions, :strength_flaccid_rue, :boolean
    add_column :submissions, :strength_flaccid_lue, :boolean
    add_column :submissions, :strength_flaccid_rle, :boolean
    add_column :submissions, :strength_flaccid_lle, :boolean
    add_column :submissions, :strength_spastic_rue, :boolean
    add_column :submissions, :strength_spastic_lue, :boolean
    add_column :submissions, :strength_spastic_rle, :boolean
    add_column :submissions, :strength_spastic_lle, :boolean
    add_column :submissions, :strength_paresis_rue, :boolean
    add_column :submissions, :strength_paresis_lue, :boolean
    add_column :submissions, :strength_paresis_rle, :boolean
    add_column :submissions, :strength_paresis_lle, :boolean
    add_column :submissions, :strength_other_rue, :boolean
    add_column :submissions, :strength_other_lue, :boolean
    add_column :submissions, :strength_other_rle, :boolean
    add_column :submissions, :strength_other_lle, :boolean
    add_column :submissions, :strength_comments, :string
  end
end
