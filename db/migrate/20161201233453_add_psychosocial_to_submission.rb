class AddPsychosocialToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :marital_status, :string
    add_column :submissions, :affect, :json
    add_column :submissions, :spiritual_needs, :string
    add_column :submissions, :other_spiritual_needs, :string
    add_column :submissions, :bereaving_support_given, :boolean
    add_column :submissions, :hospice_care, :string
    add_column :submissions, :substance_abuse_history, :boolean
    add_column :submissions, :substance_abuse_history_type, :string
    add_column :submissions, :social_support, :json
    add_column :submissions, :other_social_support, :string
    add_column :submissions, :advanced_directive, :string
    add_column :submissions, :resuscitation_status, :json
    add_column :submissions, :other_resuscitation_status, :string
    add_column :submissions, :resuscitation_comments, :text
    add_column :submissions, :motion_strength, :text
    add_column :submissions, :movement, :text
    add_column :submissions, :gait, :text
    add_column :submissions, :grip, :text
    add_column :submissions, :icp_device, :string
    add_column :submissions, :prescribed_level, :integer
    add_column :submissions, :monitor, :string
    add_column :submissions, :monitor_comments, :text
  end
end
