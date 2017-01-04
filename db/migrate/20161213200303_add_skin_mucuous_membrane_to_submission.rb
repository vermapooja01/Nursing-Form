class AddSkinMucuousMembraneToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :skin_type
    add_column :submissions, :pink
    add_column :submissions, :pale
    add_column :submissions, :cyanotic
    add_column :submissions, :jaundiced
    add_column :submissions, :mottled
    add_column :submissions, :flushed
    add_column :submissions, :cool
    add_column :submissions, :warm
    add_column :submissions, :hot
    add_column :submissions, :moist
    add_column :submissions, :diaphoretic
    add_column :submissions, :dry
    add_column :submissions, :turgor
    add_column :submissions, :turgor_comments
  end
end
