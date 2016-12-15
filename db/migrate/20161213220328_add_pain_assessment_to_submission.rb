class AddPainAssessmentToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :pain_assessment, :string
    add_column :submissions, :verbal, :string
    add_column :submissions, :non_verbal, :string
    add_column :submissions, :scale_used, :string
    add_column :submissions, :other_symptoms_present, :string
    add_column :submissions, :additional_measures, :string
    add_column :submissions, :pain_scale, :binary
    add_column :submissions, :pain_scale_rating_scale, :binary
    add_column :submissions, :flacc_scale, :string
    add_column :submissions, :criteria, :string
    add_column :submissions, :score_0_one, :string
    add_column :submissions, :score_1_one, :string
    add_column :submissions, :score_2_one, :string
    add_column :submissions, :total_score_one, :integer
    add_column :submissions, :critical_care_pain_observation_tool, :string
    add_column :submissions, :indicator, :string
    add_column :submissions, :score_0_two, :string
    add_column :submissions, :score_1_two, :string
    add_column :submissions, :score_2_two, :string
    add_column :submissions, :total_score_two, :integer
  end
end
