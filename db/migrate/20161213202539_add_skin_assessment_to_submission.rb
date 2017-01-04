class AddSkinAssessmentToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :wound_assessment, :string
    add_column :submissions, :stage, :string
    add_column :submissions, :other_wounds, :string
    add_column :submissions, :wound_size, :string
    add_column :submissions, :depth, :integer
    add_column :submissions, :undermining, :string
    add_column :submissions, :drainage, :string
    add_column :submissions, :wound_amount, :string
    add_column :submissions, :color_of_wound, :string
    add_column :submissions, :periwound_surrounding_skin, :string
    add_column :submissions, :location_image1, :string
    add_column :submissions, :location_image2, :string
  end
end
