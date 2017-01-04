class AddVteRiskAssessmentToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :each_risk_factor_represents_one_point
    add_column :submissions, :each_risk_factor_represents_two_point
    add_column :submissions, :each_risk_factor_represents_three_point
    add_column :submissions, :each_risk_factor_represents_five_point
    add_column :submissions, :patients_total_score
  end
end
