class AddPage9ToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :time
    add_column :submissions, :t
    add_column :submissions, :p
    add_column :submissions, :r
    add_column :submissions, :b_p
    add_column :submissions, :sao2
    add_column :submissions, :pas_pad
    add_column :submissions, :pcwp
    add_column :submissions, :cvp
    add_column :submissions, :gcs
    add_column :submissions, :icp
    add_column :submissions, :i
    add_column :submissions, :o
    add_column :submissions, :other_ct_ngt_drains
    add_column :submissions, :titrated_meds_or_meds_treatment_based_on_patients_condition
    add_column :submissions, :other_relevant_notes
  end
end
