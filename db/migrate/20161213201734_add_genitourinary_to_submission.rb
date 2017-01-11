class AddGenitourinaryToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :urine, :string
    add_column :submissions, :suprapubic_type, :string
    add_column :submissions, :suprapubic_size, :string
    add_column :submissions, :insertion_date, :string
    add_column :submissions, :color, :string
    add_column :submissions, :dialysis, :string
    add_column :submissions, :dialysis_location, :string
  end
end
