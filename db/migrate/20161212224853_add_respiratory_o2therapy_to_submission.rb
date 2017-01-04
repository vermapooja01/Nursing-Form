class AddRespiratoryO2therapyToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :ventilation, :string
    add_column :submissions, :pattern, :string
    add_column :submissions, :breath_sounds, :string
    add_column :submissions, :cough, :string
    add_column :submissions, :sputum, :string
    add_column :submissions, :consistency, :string
    add_column :submissions, :amount, :string
    add_column :submissions, :amount_comments, :text
    add_column :submissions, :o2_protocol_in_place, :string
    add_column :submissions, :ventilator_settings, :string
    add_column :submissions, :ett_placement, :string
    add_column :submissions, :trach, :string
    add_column :submissions, :chest_tube, :string
    add_column :submissions, :chest_tube_comments, :text

  end
end
