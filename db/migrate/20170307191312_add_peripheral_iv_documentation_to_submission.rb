class AddPeripheralIvDocumentationToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :peripheral_iv_insertion_change_date_and_time, :datetime
    add_column :submissions, :peripheral_iv_insertion_site, :string
    add_column :submissions, :number_of_attempts_for_peripheral_iv_insertion, :integer
    add_column :submissions, :catheter_gauge, :string
    add_column :submissions, :initials, :string
    add_column :submissions, :narrative_note, :string
    add_column :submissions, :peripheral_iv_site_assessment_date_and_time, :datetime
    add_column :submissions, :shift, :string
    add_column :submissions, :iv_patent, :string
    add_column :submissions, :signs_of_infiltration, :string
    add_column :submissions, :signs_of_infection_or_phlebitis, :string
    add_column :submissions, :dressing_dry_or_intact, :string
    add_column :submissions, :dressing_change_time, :time
    add_column :submissions, :tubing_change_time, :time
    add_column :submissions, :your_initials, :string
    add_column :submissions, :narrative_note_for_assessment, :string
  end
end
