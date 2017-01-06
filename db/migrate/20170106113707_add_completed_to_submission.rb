class AddCompletedToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :completed, :boolean
  end
end
