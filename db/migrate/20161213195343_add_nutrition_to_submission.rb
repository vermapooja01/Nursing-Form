class AddNutritionToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :diet
    add_column :submissions, :diet_type
    add_column :submissions, :breakfast
    add_column :submissions, :lunch
    add_column :submissions, :dinner
    add_column :submissions, :taken_type
    add_column :submissions, :tf
    add_column :submissions, :residual
    add_column :submissions, :placement
    add_column :submissions, :placement_comments
  end
end
