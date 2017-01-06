class AddCompletedToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :completed, :boolean, :default => false
  end
end
