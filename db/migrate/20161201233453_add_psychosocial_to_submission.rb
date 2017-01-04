class AddPsychosocialToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :marital_status, :string
    add_column :submissions, :affect, :string
    add_column :submissions, :spiritual_needs, :string
    add_column :submissions, :social_support, :string
    add_column :submissions, :advanced_directive, :string
    add_column :submissions, :resuscitation_status, :string
    add_column :submissions, :resuscitation_comments, :text
    add_column :submissions, :motion_strength, :text
    add_column :submissions, :grip, :text
    add_column :submissions, :icp_device, :string
    add_column :submissions, :prescribed_level, :integer
    add_column :submissions, :monitor, :string
    add_column :submissions, :monitor_comments, :text
  end
end
