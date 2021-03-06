class AddAdlFlowsheetToSubmission < ActiveRecord::Migration[5.0]
  def change
    # add_column :submissions, :hygiene, :string
    add_column :submissions, :oral_care, :string
    add_column :submissions, :dentures_present, :string
    add_column :submissions, :perifoley_care, :string
    add_column :submissions, :linen_change, :string
    add_column :submissions, :bath, :string
    add_column :submissions, :trach_care, :string
    # add_column :submissions, :activity, :string
    add_column :submissions, :bed_rest, :string
    add_column :submissions, :dangle, :string
    add_column :submissions, :ambulate, :string
    add_column :submissions, :transfer_chair, :string
    add_column :submissions, :bathroom_privileges_bsc, :string
    add_column :submissions, :position_change, :string
    add_column :submissions, :ad_lib, :string
    # add_column :submissions, :safety, :string
    add_column :submissions, :name_allergy_band, :string
    add_column :submissions, :bed_low_position_locked, :string
    add_column :submissions, :side_rails_up1234, :string
    add_column :submissions, :non_skid_footwear, :string
    add_column :submissions, :call_light_in_reach, :string
    add_column :submissions, :fall_precautions, :string
    add_column :submissions, :seizure_precautions, :string
    add_column :submissions, :isolation, :string
    add_column :submissions, :bed_check, :string
    add_column :submissions, :posey_wrap, :string
    add_column :submissions, :ambu_bag, :string
    add_column :submissions, :suction_and_correct_setup, :string
    add_column :submissions, :alarms_and_limits, :string
    # add_column :submissions, :equipment, :string
    add_column :submissions, :iv_pumps, :string
    add_column :submissions, :feeding_pump, :string
    add_column :submissions, :pca_pump, :string
    add_column :submissions, :incentive_spirometer, :string
    add_column :submissions, :pulse_oximeter, :string
    add_column :submissions, :trapeze, :string
    add_column :submissions, :sequential_compression_device, :string
    add_column :submissions, :k_pad, :string
    add_column :submissions, :nibp, :string
    add_column :submissions, :continuous_passive_motion, :string
    add_column :submissions, :traction_type, :text
    add_column :submissions, :mattress_overlay, :string
    add_column :submissions, :walker, :string
    add_column :submissions, :speciality_bed, :text
    add_column :submissions, :hypo_hyperthemia_blanket, :string
    add_column :submissions, :bedside_commode, :string
    add_column :submissions, :abductor_pillow, :string
    add_column :submissions, :wound_vac, :string
    add_column :submissions, :humidifier, :string
    add_column :submissions, :heat_lamp, :string
    add_column :submissions, :o2_tank, :string
    add_column :submissions, :other_equipment, :text
  end
end
