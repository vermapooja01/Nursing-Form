class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :kind
      t.string :user_name
      t.string :email

      t.timestamps
    end
  end
end
