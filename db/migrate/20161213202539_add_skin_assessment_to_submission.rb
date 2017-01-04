class AddSkinAssessmentToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :wound_assessment
    add_column :submissions, :stage
    add_column :submissions, :other_wounds
    add_column :submissions, :wound_size
    add_column :submissions, :depth
    add_column :submissions, :undermining
    add_column :submissions, :drainage
    add_column :submissions, :wound_amount
    add_column :submissions, :color_of_wound
    add_column :submissions, :periwound_surrounding_skin
    add_column :submissions, :location_image1
    add_column :submissions, :location_image2
  end
end
