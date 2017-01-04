class AddNutritionToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :diet, :text
    add_column :submissions, :diet_type, :string
    add_column :submissions, :breakfast, :integer
    add_column :submissions, :lunch, :integer
    add_column :submissions, :dinner, :integer
    add_column :submissions, :taken_type, :string
    add_column :submissions, :tf, :string
    add_column :submissions, :residual, :string
    add_column :submissions, :placement, :string
    add_column :submissions, :placement_comments, :text
  end
end
