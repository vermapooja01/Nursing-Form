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
    # add_column :submissions, :flacc_scale, :string
    add_column :submissions, :criteria, :string
    add_column :submissions, :flacc_score_0, :string
    add_column :submissions, :flacc_score_1, :string
    add_column :submissions, :score_2_flacc, :string
    add_column :submissions, :total_score_flacc, :integer
    add_column :submissions, :critical_care_pain_observation_tool, :string
    add_column :submissions, :indicator, :string
    add_column :submissions, :score_0_cpot, :string
    add_column :submissions, :score_1_cpot, :string
    add_column :submissions, :score_2_cpot, :string
    add_column :submissions, :total_score_cpot, :integer
  end
end
