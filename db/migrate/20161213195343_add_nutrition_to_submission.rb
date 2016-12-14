class AddNutritionToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :diet, :string
    add_column :submissions, :pureed, :string
    add_column :submissions, :mechanical_soft, :string
    add_column :submissions, :thickened_liquids, :string
    add_column :submissions, :low_residue, :string
    add_column :submissions, :breakfast, :string
    add_column :submissions, :lunch, :string
    add_column :submissions, :dinner, :string
    add_column :submissions, :self, :string
    add_column :submissions, :assist, :string
    add_column :submissions, :feed, :string
    add_column :submissions, :npo, :string
    add_column :submissions, :tf, :string
    add_column :submissions, :residual, :string
    add_column :submissions, :placement, :string
    add_column :submissions, :comments_eight, :string
  end
end
