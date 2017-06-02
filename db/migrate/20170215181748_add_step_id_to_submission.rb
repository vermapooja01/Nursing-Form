class AddStepIdToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :step_id, :string
  end
end
