class AddCardiovascularToSubmission < ActiveRecord::Migration[5.0]
  def change
    # add_column :submissions, :pulses, :string
    # add_column :submissions, :radial, :string
    # add_column :submissions, :femoral, :string
    # add_column :submissions, :popliteal, :string
    # add_column :submissions, :dorsalis_pedis, :string
    # add_column :submissions, :posterior_tibialis, :string
    # add_column :submissions, :pulses_absent, :string
    # add_column :submissions, :pulses_weak, :string
    # add_column :submissions, :pulses_normal, :string
    # add_column :submissions, :pulses_full, :string
    # add_column :submissions, :pulses_bounding, :string
    # add_column :submissions, :pulses_dp_doppler, :string
    add_column :submissions, :radial_absent, :string
    add_column :submissions, :femoral_absent, :string
    add_column :submissions, :popliteal_absent, :string
    add_column :submissions, :dorsalis_pedis_absent, :string
    add_column :submissions, :posterior_tibialis_absent, :string
    add_column :submissions, :radial_weak, :string
    add_column :submissions, :femoral_weak, :string
    add_column :submissions, :popliteal_weak, :string
    add_column :submissions, :dorsalis_pedis_weak, :string
    add_column :submissions, :posterior_tibialis_weak, :string
    add_column :submissions, :radial_normal, :string
    add_column :submissions, :femoral_normal, :string
    add_column :submissions, :popliteal_normal, :string
    add_column :submissions, :dorsalis_pedis_normal, :string
    add_column :submissions, :posterior_tibialis_normal, :string
    add_column :submissions, :radial_full, :string
    add_column :submissions, :femoral_full, :string
    add_column :submissions, :popliteal_full, :string
    add_column :submissions, :dorsalis_pedis_full, :string
    add_column :submissions, :posterior_tibialis_full, :string
    add_column :submissions, :radial_bounding, :string
    add_column :submissions, :femoral_bounding, :string
    add_column :submissions, :popliteal_bounding, :string
    add_column :submissions, :dorsalis_pedis_bounding, :string
    add_column :submissions, :posterior_tibialis_bounding, :string
    add_column :submissions, :radial_dp_doppler, :string
    add_column :submissions, :femoral_dp_doppler, :string
    add_column :submissions, :popliteal_dp_doppler, :string
    add_column :submissions, :dorsalis_pedis_dp_doppler, :string
    add_column :submissions, :posterior_tibialis_dp_doppler, :string
    add_column :submissions, :heart_sounds, :string
    add_column :submissions, :edema, :string
    add_column :submissions, :edema_where, :string
    add_column :submissions, :capillary_refill, :string
    add_column :submissions, :cardiac_rhythm, :string
    add_column :submissions, :specify_ectopy, :string
    add_column :submissions, :other_cardiac_rhythm, :string
    add_column :submissions, :cardiac_rhythm_comments, :text
    add_column :submissions, :pacemaker, :string
    add_column :submissions, :ma, :string
    add_column :submissions, :rate, :string
    add_column :submissions, :sens, :string
    add_column :submissions, :pacemaker_site, :string
    add_column :submissions, :site, :string
    add_column :submissions, :waveform, :string
    add_column :submissions, :waveform_comments, :text
    add_column :submissions, :pa_catheter_site, :string
    add_column :submissions, :waveform_for_pa_catheter, :string
    add_column :submissions, :waveform_pa_catheter_comments, :text
    add_column :submissions, :insertion_site, :string
    add_column :submissions, :trigger, :string
    add_column :submissions, :freq, :string
  end
end
