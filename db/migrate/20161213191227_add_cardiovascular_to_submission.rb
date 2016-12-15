class AddCardiovascularToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :pulses, :string
    add_column :submissions, :radial, :string
    add_column :submissions, :femoral, :string
    add_column :submissions, :popliteal, :string
    add_column :submissions, :dorsalis_pedis, :string
    add_column :submissions, :posterior_tibialis, :string
    add_column :submissions, :heart_sounds, :string
    add_column :submissions, :edema, :string
    add_column :submissions, :capillary_refill, :string
    add_column :submissions, :cardiac_rhythm, :string
    add_column :submissions, :comments_four, :text
    add_column :submissions, :pacemaker, :string
    add_column :submissions, :pacemaker_settings, :string
    add_column :submissions, :arterial_line, :string
    add_column :submissions, :waveform, :string
    add_column :submissions, :comments_five, :text
    add_column :submissions, :pa_catcher, :string
    add_column :submissions, :waveform_two, :string
    add_column :submissions, :comments_six, :text
    add_column :submissions, :iabp, :string
    add_column :submissions, :trigger, :string
    add_column :submissions, :freq, :string
  end
end
