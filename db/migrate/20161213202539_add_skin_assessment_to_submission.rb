class AddSkinAssessmentToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :wound_assessment, :string
    add_column :submissions, :stage, :string
    add_column :submissions, :other_wounds, :string
    add_column :submissions, :size, :string
    add_column :submissions, :depth, :string
    add_column :submissions, :undermining, :string
    add_column :submissions, :drainage, :string
    add_column :submissions, :amount, :string
    add_column :submissions, :color_of_wound, :string
    add_column :submissions, :periwound_surrounding_skin, :string
    add_column :submissions, :location, :string
  end
end
