class AddSkinRiskAssessmentScreenToSubmission < ActiveRecord::Migration[5.0]
  def change
    # add_column :submissions, :skin_risk_assessment_screen, :string
    # add_column :submissions, :skin_risk_assessment_screen_score, :integer
    # add_column :submissions, :skin_risk_assessment_screen_patients_score, :integer
    # add_column :submissions, :sensory_perception, :string
    add_column :submissions, :completely_limited, :integer
    add_column :submissions, :patients_completely_limited_score, :integer
    add_column :submissions, :very_limited, :integer
    add_column :submissions, :patients_very_limited_score, :integer
    add_column :submissions, :slightly_limited, :integer
    add_column :submissions, :patients_slightly_limited_score, :integer
    add_column :submissions, :no_impairment, :integer
    add_column :submissions, :patients_no_impairment_score, :integer
    # add_column :submissions, :moisture, :string
    add_column :submissions, :constantly_moist, :integer
    add_column :submissions, :patients_constantly_moist_score, :integer
    add_column :submissions, :moist, :integer
    add_column :submissions, :patients_moist_score, :integer
    add_column :submissions, :occasionally_moist, :integer
    add_column :submissions, :patients_occasionally_moist_score, :integer
    add_column :submissions, :rarely_moist, :integer
    add_column :submissions, :patients_rarely_moist_score, :integer
    # add_column :submissions, :activity_skin_assessment_screen, :string
    add_column :submissions, :bedfast, :integer
    add_column :submissions, :patients_bedfast_score, :integer
    add_column :submissions, :chairfast, :integer
    add_column :submissions, :patients_chairfast_score, :integer
    add_column :submissions, :walks_occasionally, :integer
    add_column :submissions, :patients_walks_occasionally_score, :integer
    add_column :submissions, :walks_frequently, :integer
    add_column :submissions, :patients_walks_frequently_score, :integer
    # add_column :submissions, :mobility, :string
    add_column :submissions, :completely_immobile, :integer
    add_column :submissions, :patients_completely_immobile_score, :integer
    add_column :submissions, :very_limited_mobility, :integer
    add_column :submissions, :patients_very_limited_mobility_score, :integer
    add_column :submissions, :slightly_limited_mobility, :integer
    add_column :submissions, :patients_slightly_limited_mobility_score, :integer
    add_column :submissions, :no_limitations, :integer
    add_column :submissions, :patients_no_limitations_score, :integer
    # add_column :submissions, :nutrition_score, :string
    add_column :submissions, :very_poor, :integer
    add_column :submissions, :patients_very_poor_score, :integer
    add_column :submissions, :probably_inadequate, :integer
    add_column :submissions, :patients_probably_inadequate_score, :integer
    add_column :submissions, :adequate, :integer
    add_column :submissions, :patients_adequate_score, :integer
    add_column :submissions, :excellent, :integer
    add_column :submissions, :patients_excellant_score, :integer
    # add_column :submissions, :friction_shear, :string
    add_column :submissions, :problem, :integer
    add_column :submissions, :patients_problem_score, :integer
    add_column :submissions, :potential_problem, :integer
    add_column :submissions, :patients_potential_problem_score, :integer
    add_column :submissions, :no_apparent_problem, :integer
    add_column :submissions, :patients_no_apparent_problem_score, :integer
    add_column :submissions, :total_score_skin_assessment_screen, :integer
    add_column :submissions, :choose_for_information, :string
    # add_column :submissions, :skin_intact, :string
    # add_column :submissions, :pressure_ulcer_prevention_protocol_in_place, :string
    # add_column :submissions, :see_presssure_ulcer_documentation_form, :string
    # add_column :submissions, :fall_scale_risk, :string
    # add_column :submissions, :fall_scale_risk_score, :integer
    # add_column :submissions, :fall_scale_risk_patients_score, :integer
    # add_column :submissions, :history_of_falling, :string
    add_column :submissions, :no_history_of_falling, :integer
    add_column :submissions, :patients_no_history_of_falling_score, :integer
    add_column :submissions, :immediate_or_within_three_months, :integer
    add_column :submissions, :patients_immediate_or_within_three_months_score, :integer
    # add_column :submissions, :presence_of_secondary_diagnosis, :string
    add_column :submissions, :no_presence_of_secondary_diagnosis, :integer
    add_column :submissions, :patients_no_presence_of_secondary_diagnosis_score, :integer
    add_column :submissions, :yes_presence_of_secondary_diagnosis, :integer
    add_column :submissions, :patients_yes_presence_of_secondary_diagnosis_score, :integer
    # add_column :submissions, :ambulatory_aid, :string
    add_column :submissions, :none_bedrest_nurse_assist, :integer
    add_column :submissions, :patients_none_bedrest_nurse_assist_score, :integer
    add_column :submissions, :cane_walker_crutches, :integer
    add_column :submissions, :patients_cane_walker_crutches_score, :integer
    add_column :submissions, :furniture, :integer
    add_column :submissions, :patients_furniture_score, :integer
    # add_column :submissions, :iv_heparin_lock, :string
    add_column :submissions, :no_iv_heparin_lock, :integer
    add_column :submissions, :patients_no_iv_heparin_lock_score, :integer
    add_column :submissions, :yes_iv_heparin_lock, :integer
    add_column :submissions, :patients_yes_iv_heparin_lock_score, :integer
    # add_column :submissions, :gait_transferring, :string
    add_column :submissions, :normal_bedrest_wheelchair, :integer
    add_column :submissions, :patients_normal_bedrest_wheelchair_score, :integer
    add_column :submissions, :weak, :integer
    add_column :submissions, :patients_weak_score, :integer
    add_column :submissions, :impaired, :integer
    add_column :submissions, :patients_impaired_score, :integer
    # add_column :submissions, :mental_status, :string
    add_column :submissions, :oriented_to_own_ability, :integer
    add_column :submissions, :patients_oriented_to_own_ability_score, :integer
    add_column :submissions, :overstimates_forgets_limitations, :integer
    add_column :submissions, :patients_overestimates_forgets_limitations_score, :integer
    add_column :submissions, :total_score_fall_scale_risk, :integer
    add_column :submissions, :select_one, :string
    # add_column :submissions, :greater_than_25_initiate_fall_risk_measures, :string
    # add_column :submissions, :patient_refuses_to_wear_red_slippers_in_bed, :string
    # add_column :submissions, :unable_to_wear_slippers, :string
    # add_column :submissions, :sign_on_door, :string
    add_column :submissions, :medications, :string
  end
end
