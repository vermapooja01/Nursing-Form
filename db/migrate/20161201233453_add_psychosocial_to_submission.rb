class AddPsychosocialToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :marital_status
    add_column :submissions, :affect
    add_column :submissions, :spiritual_needs
    add_column :submissions, :social_support
    add_column :submissions, :advanced_directive
    add_column :submissions, :resuscitation_status
    add_column :submissions, :resuscitation_comments
    add_column :submissions, :motion_strength
    add_column :submissions, :grip
    add_column :submissions, :icp_device
    add_column :submissions, :prescribed_level
    add_column :submissions, :monitor
    add_column :submissions, :monitor_comments
  end
end
