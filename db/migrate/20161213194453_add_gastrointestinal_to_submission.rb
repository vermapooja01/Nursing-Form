class AddGastrointestinalToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :abdomen
    add_column :submissions, :bowel_sounds
    add_column :submissions, :ngt
    add_column :submissions, :gastronomy
    add_column :submissions, :jejunostomy
    add_column :submissions, :feeding_tube
    add_column :submissions, :type
    add_column :submissions, :size
    add_column :submissions, :position
    add_column :submissions, :drainage_color
    add_column :submissions, :drainage_color_comments
  end
end
