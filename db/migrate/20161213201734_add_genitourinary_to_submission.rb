class AddGenitourinaryToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :urine, :string
    add_column :submissions, :color, :string
    add_column :submissions, :dialysis, :string
  end
end
