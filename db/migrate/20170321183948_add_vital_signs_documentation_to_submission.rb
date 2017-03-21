class AddVitalSignsDocumentationToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :vital_signs_documentation_time, :datetime
    add_column :submissions, :t_vital_signs, :string
    add_column :submissions, :p_vital_signs, :string
    add_column :submissions, :r_vital_signs, :string
    add_column :submissions, :b_p_vital_signs, :string
    add_column :submissions, :sao2_vital_signs, :string
    add_column :submissions, :pas_pad_vital_signs, :string
    add_column :submissions, :pcwp_vital_signs, :string
    add_column :submissions, :cvp_vital_signs, :string
    add_column :submissions, :gcs_vital_signs, :string
    add_column :submissions, :icp_vital_signs, :string
    add_column :submissions, :i_vital_signs, :string
    add_column :submissions, :o_vital_signs, :string
    add_column :submissions, :other_ct_ngt_drains_vital_signs, :string
    add_column :submissions, :titrated_meds_or_meds_treatment_based_on_patients_condition_vit, :string
    add_column :submissions, :other_relevant_notes_vital_signs, :string
  end
end
