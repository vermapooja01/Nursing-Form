class AddWorkShiftToMar < ActiveRecord::Migration[5.0]
  def change
    add_column :mars, :work_shift, :string
  end
end
