class AddGenitourinaryToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :urine
    add_column :submissions, :color
    add_column :submissions, :dialysis
  end
end
