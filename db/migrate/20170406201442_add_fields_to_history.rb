class AddFieldsToHistory < ActiveRecord::Migration[5.0]
  def change
    add_column :histories, :service, :string
  end
end
