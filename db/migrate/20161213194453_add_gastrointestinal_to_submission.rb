class AddGastrointestinalToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :abdomen, :string
    add_column :submissions, :bowel_sounds, :string
    add_column :submissions, :ngt, :string
    add_column :submissions, :gastronomy, :string
    add_column :submissions, :jejunostomy, :string
    add_column :submissions, :feeding_tube, :string
    add_column :submissions, :feeding_tube_type, :string
    add_column :submissions, :feeding_tube_size, :string
    add_column :submissions, :position, :string
    add_column :submissions, :drainage_color, :string
    add_column :submissions, :drainage_color_comments, :string
  end
end
