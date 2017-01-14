class AddRespiratoryO2therapyToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :ventilation, :string
    add_column :submissions, :pattern, :string
    add_column :submissions, :breath_sounds, :string
    add_column :submissions, :diminished, :boolean
    add_column :submissions, :diminished_where, :string
    add_column :submissions, :absent, :boolean
    add_column :submissions, :absent_where, :string
    add_column :submissions, :crackles, :boolean
    add_column :submissions, :crackles_where, :string
    add_column :submissions, :wheezes, :boolean
    add_column :submissions, :wheezes_where, :string
    add_column :submissions, :stridor, :boolean
    add_column :submissions, :stridor_where, :string
    add_column :submissions, :ronchi, :boolean
    add_column :submissions, :ronchi_where, :string
    add_column :submissions, :cough, :string
    add_column :submissions, :sputum, :string
    add_column :submissions, :respiratory_color, :string
    add_column :submissions, :other_color, :string
    add_column :submissions, :consistency, :string
    add_column :submissions, :other_consistency, :string
    add_column :submissions, :amount, :string
    add_column :submissions, :amount_comments, :text
    add_column :submissions, :o2_protocol_in_place, :string
    add_column :submissions, :o2_nc, :string
    add_column :submissions, :o2_mask, :string
    add_column :submissions, :ventilator_settings, :string
    add_column :submissions, :mode, :string
    add_column :submissions, :tv, :string
    add_column :submissions, :fio2, :string
    add_column :submissions, :rr, :string
    add_column :submissions, :ps, :string
    add_column :submissions, :peep, :string
    add_column :submissions, :peak_airway_pressure, :string
    add_column :submissions, :other_settings, :string
    add_column :submissions, :ett_placement, :integer
    add_column :submissions, :trach_not_applicable, :string
    add_column :submissions, :trach_type, :string
    add_column :submissions, :trach_size, :integer
    add_column :submissions, :chest_tube, :string
    add_column :submissions, :location_where, :string
    add_column :submissions, :suction_type, :string
    add_column :submissions, :emphysema_where, :string
    add_column :submissions, :chest_tube_comments, :text
  end
end
