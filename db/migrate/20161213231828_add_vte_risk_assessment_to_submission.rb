class AddVteRiskAssessmentToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :each_risk_factor_represents_one_point, :string
    add_column :submissions, :each_risk_factor_represents_two_point, :string
    add_column :submissions, :each_risk_factor_represents_three_point, :string
    add_column :submissions, :each_risk_factor_represents_five_point, :string
    add_column :submissions, :patients_total_score, :string

    #vte score calculation

    add_column :submissions, :risk_factor_one_values, :json
    add_column :submissions, :risk_factor_two_values, :json
    add_column :submissions, :risk_factor_three_values, :json
    add_column :submissions, :risk_factor_five_values, :json

    add_column :submissions, :risk_factor_one, :string
    add_column :submissions, :risk_factor_two, :string
    add_column :submissions, :risk_factor_three, :string
    add_column :submissions, :risk_factor_five, :string
    add_column :submissions, :vte_total_score, :integer

  end
end
