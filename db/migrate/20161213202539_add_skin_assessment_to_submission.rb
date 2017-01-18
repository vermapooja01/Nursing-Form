class AddSkinAssessmentToSubmission < ActiveRecord::Migration[5.0]
  def change
    # add_column :submissions, :wound_assessment, :string
    add_column :submissions, :stage, :json
    add_column :submissions, :other_wounds, :json
    # add_column :submissions, :wound_size, :string
    add_column :submissions, :venous_ulcer, :string
    add_column :submissions, :burn, :string
    add_column :submissions, :maceration, :string
    add_column :submissions, :excoriation, :string
    add_column :submissions, :diabetic_ulcer, :string
    add_column :submissions, :arterial_ulcer, :string
    add_column :submissions, :incision, :string
    add_column :submissions, :scar, :string
    add_column :submissions, :skin_tears, :string
    # add_column :submissions, :depth, :integer
    add_column :submissions, :venous_ulcer_depth, :integer
    add_column :submissions, :burn_depth, :integer
    add_column :submissions, :maceration_depth, :integer
    add_column :submissions, :excoriation_depth, :integer
    add_column :submissions, :diabetic_ulcer_depth, :integer
    add_column :submissions, :arterial_ulcer_depth, :integer
    add_column :submissions, :incision_depth, :integer
    add_column :submissions, :scar_depth, :integer
    add_column :submissions, :skin_tears_depth, :integer
    add_column :submissions, :undermining, :json
    add_column :submissions, :drainage, :json
    add_column :submissions, :other_drainage, :string
    add_column :submissions, :wound_amount, :json
    add_column :submissions, :color_of_wound, :json
    add_column :submissions, :periwound_surrounding_skin, :json
    add_column :submissions, :location_image1, :json
    add_column :submissions, :location_image2, :json
  end
end
