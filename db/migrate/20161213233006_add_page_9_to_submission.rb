class AddPage9ToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :time, :integer
    add_column :submissions, :t, :string
    add_column :submissions, :p, :string
    add_column :submissions, :r, :string
    add_column :submissions, :b_p, :string
    add_column :submissions, :sao2, :string
    add_column :submissions, :pas_pad, :string
    add_column :submissions, :pcwp, :string
    add_column :submissions, :cvp, :string
    add_column :submissions, :gcs, :string
    add_column :submissions, :icp, :string
    add_column :submissions, :i, :string
    add_column :submissions, :o, :string
    add_column :submissions, :other_ct_ngt_drains, :string
    add_column :submissions, :titrated_meds_or_meds_treatment_based_on_patients_condition, :text
    add_column :submissions, :other_relevant_notes, :text
  end
end
