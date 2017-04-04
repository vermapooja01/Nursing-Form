class AddUrinaryCatheterizationToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :pre_insertion, :string
    add_column :submissions, :urinary_catheterization_type, :string
    add_column :submissions, :urinary_catheterization_size, :integer
    add_column :submissions, :urinary_catheterization_volume, :integer
    add_column :submissions, :urinary_catheterization_color, :string
    add_column :submissions, :urinary_catheterization_clarity, :string
    add_column :submissions, :urinary_catheterization_odor, :string
    add_column :submissions, :balloon_water_volume, :integer
    add_column :submissions, :initial_urine_return, :string
    add_column :submissions, :patient_tolerance_of_procedure_urinary, :string
    add_column :submissions, :urinary_catheterization_datetime, :datetime
    add_column :submissions, :urinary_catheterization_name, :string
  end
end
