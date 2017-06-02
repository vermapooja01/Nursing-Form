class CreatePrns < ActiveRecord::Migration[5.0]
  def change
    create_table :prns do |t|
      t.string :ordering_md
      t.date :date_ordered
      t.string :medication

      t.timestamps
    end
  end
end
