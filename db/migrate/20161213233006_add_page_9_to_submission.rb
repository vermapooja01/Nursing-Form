class AddPage9ToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :time, :integer
    add_column :submissions, :t, :integer
    add_column :submissions, :p, :integer
    add_column :submissions, :r, :integer
    add_column :submissions, :b_p, :integer
    add_column :submissions, :sao2, :integer
    add_column :submissions, :pas_pad, :integer
    add_column :submissions, :pcwp, :integer
    add_column :submissions, :cvp, :integer
    add_column :submissions, :gcs, :integer
    add_column :submissions, :icp, :integer
    add_column :submissions, :i, :integer
    add_column :submissions, :o, :integer
    add_column :submissions, :other_ct_ngt_drains, :integer
    add_column :submissions, :titrated_meds_or_meds_treatment_based_on_patients_condition, :integer
    add_column :submissions, :other_relevant_notes, :integer
  end
end
