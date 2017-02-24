class AddPainAssessmentToSubmission < ActiveRecord::Migration[5.0]
  def change
    # add_column :submissions, :pain_assessment, :string
    add_column :submissions, :verbal, :json
    add_column :submissions, :non_verbal, :json
    add_column :submissions, :scale_used, :json
    add_column :submissions, :other_symptoms_present, :json
    add_column :submissions, :additional_measures, :json
    add_column :submissions, :pain_scale, :string, :default => 0
    add_column :submissions, :pain_scale_rating_scale, :string, :default => 0

    # flacc Score Calculation
    add_column :submissions, :flacc_score_zero_values, :json
    add_column :submissions, :flacc_score_one_values, :json
    add_column :submissions, :flacc_score_two_values, :json
    add_column :submissions, :flacc_score_zero, :string
    add_column :submissions, :flacc_score_one, :string
    add_column :submissions, :flacc_score_two, :string

    # Score 0
    add_column :submissions, :flacc_scale_face_0, :integer
    add_column :submissions, :flacc_scale_legs_0, :integer
    add_column :submissions, :flacc_scale_activity_0, :integer
    add_column :submissions, :flacc_scale_cry_0, :integer
    add_column :submissions, :flacc_scale_consolability_0, :integer
    # Score 1
    add_column :submissions, :flacc_scale_face_1, :integer
    add_column :submissions, :flacc_scale_legs_1, :integer
    add_column :submissions, :flacc_scale_activity_1, :integer
    add_column :submissions, :flacc_scale_cry_1, :integer
    add_column :submissions, :flacc_scale_consolability_1, :integer
    # Score 2
    add_column :submissions, :flacc_scale_face_2, :integer
    add_column :submissions, :flacc_scale_legs_2, :integer
    add_column :submissions, :flacc_scale_activity_2, :integer
    add_column :submissions, :flacc_scale_cry_2, :integer
    add_column :submissions, :flacc_scale_consolability_2, :integer
    # Total Score
    add_column :submissions, :flacc_scale_total_score, :integer, :default => 0
    # CPOT Scoring
    # Score 0
    add_column :submissions, :cpot_score_facial_expression_0, :integer
    add_column :submissions, :cpot_score_body_movements_0, :integer
    add_column :submissions, :cpot_score_ventilator_compliance_0, :integer
    add_column :submissions, :cpot_score_vocalization_0, :integer
    add_column :submissions, :cpot_score_muscle_tension_0, :integer
    # Score 1
    add_column :submissions, :cpot_score_facial_expression_1, :integer
    add_column :submissions, :cpot_score_body_movements_1, :integer
    add_column :submissions, :cpot_score_ventilator_compliance_1, :integer
    add_column :submissions, :cpot_score_vocalization_1, :integer
    add_column :submissions, :cpot_score_muscle_tension_1, :integer
    # Score 2
    add_column :submissions, :cpot_score_facial_expression_2, :integer
    add_column :submissions, :cpot_score_body_movements_2, :integer
    add_column :submissions, :cpot_score_ventilator_compliance_2, :integer
    add_column :submissions, :cpot_score_vocalization_2, :integer
    add_column :submissions, :cpot_score_muscle_tension_2, :integer
    # Total Score
    add_column :submissions, :cpot_total_score, :integer, :default => 0
    # -----------------------------------------------------------------------------
  end
end
