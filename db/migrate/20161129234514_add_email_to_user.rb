class AddEmailToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :email
  end
end
