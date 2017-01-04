class AddCardiovascularToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :pulses
    add_column :submissions, :radial
    add_column :submissions, :femoral
    add_column :submissions, :popliteal
    add_column :submissions, :dorsalis_pedis
    add_column :submissions, :posterior_tibialis
    add_column :submissions, :heart_sounds
    add_column :submissions, :edema
    add_column :submissions, :capillary_refill
    add_column :submissions, :cardiac_rhythm
    add_column :submissions, :cardiac_rhythm_comments
    add_column :submissions, :pacemaker
    add_column :submissions, :pacemaker_settings
    add_column :submissions, :arterial_line
    add_column :submissions, :waveform
    add_column :submissions, :waveform_comments
    add_column :submissions, :pa_catcher
    add_column :submissions, :waveform_two
    add_column :submissions, :waveform_two_comments
    add_column :submissions, :iabp
    add_column :submissions, :trigger
    add_column :submissions, :freq
  end
end
