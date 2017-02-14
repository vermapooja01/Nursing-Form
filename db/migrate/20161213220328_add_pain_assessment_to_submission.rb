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

    # Score 0
    add_column :submissions, :flacc_scale_face_0, :boolean, :default => false
    add_column :submissions, :flacc_scale_legs_0, :boolean, :default => false
    add_column :submissions, :flacc_scale_activity_0, :boolean, :default => false
    add_column :submissions, :flacc_scale_cry_0, :boolean, :default => false
    add_column :submissions, :flacc_scale_consolability_0, :boolean, :default => false
    # Score 1
    add_column :submissions, :flacc_scale_face_1, :boolean, :default => false
    add_column :submissions, :flacc_scale_legs_1, :boolean, :default => false
    add_column :submissions, :flacc_scale_activity_1, :boolean, :default => false
    add_column :submissions, :flacc_scale_cry_1, :boolean, :default => false
    add_column :submissions, :flacc_scale_consolability_1, :boolean, :default => false
    # Score 2
    add_column :submissions, :flacc_scale_face_2, :boolean, :default => false
    add_column :submissions, :flacc_scale_legs_2, :boolean, :default => false
    add_column :submissions, :flacc_scale_activity_2, :boolean, :default => false
    add_column :submissions, :flacc_scale_cry_2, :boolean, :default => false
    add_column :submissions, :flacc_scale_consolability_2, :boolean, :default => false
    # Total Score
    add_column :submissions, :flacc_scale_total_score, :integer, :default => 0

    # CPOT Scoring
    # Score 0
    add_column :submissions, :cpot_score_facial_expression_0, :boolean, :default => false
    add_column :submissions, :cpot_score_body_movements_0, :boolean, :default => false
    add_column :submissions, :cpot_score_ventilator_compliance_0, :boolean, :default => false
    add_column :submissions, :cpot_score_vocalization_0, :boolean, :default => false
    add_column :submissions, :cpot_score_muscle_tension_0, :boolean, :default => false
    # Score 1
    add_column :submissions, :cpot_score_facial_expression_1, :boolean, :default => false
    add_column :submissions, :cpot_score_body_movements_1, :boolean, :default => false
    add_column :submissions, :cpot_score_ventilator_compliance_1, :boolean, :default => false
    add_column :submissions, :cpot_score_vocalization_1, :boolean, :default => false
    add_column :submissions, :cpot_score_muscle_tension_1, :boolean, :default => false
    # Score 2
    add_column :submissions, :cpot_score_facial_expression_2, :boolean, :default => false
    add_column :submissions, :cpot_score_body_movements_2, :boolean, :default => false
    add_column :submissions, :cpot_score_ventilator_compliance_2, :boolean, :default => false
    add_column :submissions, :cpot_score_vocalization_2, :boolean, :default => false
    add_column :submissions, :cpot_score_muscle_tension_2, :boolean, :default => false
    # Total Score
    add_column :submissions, :cpot_total_score, :integer, :default => 0
    # -----------------------------------------------------------------------------
  end
end
