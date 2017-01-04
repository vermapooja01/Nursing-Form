class AddPainAssessmentToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :pain_assessment
    add_column :submissions, :verbal
    add_column :submissions, :non_verbal
    add_column :submissions, :scale_used
    add_column :submissions, :other_symptoms_present
    add_column :submissions, :additional_measures
    add_column :submissions, :pain_scale
    add_column :submissions, :pain_scale_rating_scale
    add_column :submissions, :flacc_scale
    add_column :submissions, :criteria
    add_column :submissions, :score_0_flacc
    add_column :submissions, :score_1_flacc
    add_column :submissions, :score_2_flacc
    add_column :submissions, :total_score_flacc
    add_column :submissions, :critical_care_pain_observation_tool
    add_column :submissions, :indicator
    add_column :submissions, :score_0_cpot
    add_column :submissions, :score_1_cpot
    add_column :submissions, :score_2_cpot
    add_column :submissions, :total_score_cpot
  end
end
