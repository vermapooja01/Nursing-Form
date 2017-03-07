class AddIndwellingUrinaryCatheterDocumentationToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :indwelling_urinary_catheter_insertion_date_and_time, :datetime
    add_column :submissions, :size_of_catheter, :integer
    add_column :submissions, :number_of_attempts_for_indwelling_urinary_catheter_insertion, :integer
    add_column :submissions, :urine_return_amount, :integer
    add_column :submissions, :urine_return_color, :string
    add_column :submissions, :urine_return_clarity, :string
    add_column :submissions, :urine_return_odor, :string
    add_column :submissions, :urinary_catheter_initials, :string
    add_column :submissions, :urinary_catheter_narrative_note, :string
    add_column :submissions, :urine_output_assessment_date_and_time, :datetime
    add_column :submissions, :shift_for_urine_output_assessment, :string
    add_column :submissions, :urine_output_assessment_color, :string
    add_column :submissions, :urine_output_assessment_clarity, :string
    add_column :submissions, :urine_output_assessment_odor, :string
    add_column :submissions, :initials_for_urine_output_assessment, :string
    add_column :submissions, :narrative_note_for_urine_output_assessment, :string
  end
end
