class AddVteRiskAssessmentToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :each_risk_factor_represents_one_point, :string
    add_column :submissions, :each_risk_factor_represents_two_point, :string
    add_column :submissions, :each_risk_factor_represents_three_point, :string
    add_column :submissions, :each_risk_factor_represents_five_point, :string
    add_column :submissions, :patients_total_score, :string
  end
end
