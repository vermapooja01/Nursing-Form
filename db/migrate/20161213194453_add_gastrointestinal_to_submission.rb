class AddGastrointestinalToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :abdomen, :string
    add_column :submissions, :other_abdomen_type, :string
    add_column :submissions, :bowel_sounds, :string
    add_column :submissions, :last_bm, :string
    add_column :submissions, :bowel_control_problems, :string
    add_column :submissions, :other_bowel_control_problem, :string
    add_column :submissions, :feeding_method, :string
    # add_column :submissions, :gastronomy, :string
    # add_column :submissions, :jejunostomy, :string
    # add_column :submissions, :feeding_tube, :string
    add_column :submissions, :feeding_tube_type, :string
    add_column :submissions, :feeding_tube_size, :string
    add_column :submissions, :position, :string
    add_column :submissions, :other_position, :string
    add_column :submissions, :other_feeding_method, :string
    add_column :submissions, :drainage_color, :string
    add_column :submissions, :drainage_color_comments, :string
  end
end
