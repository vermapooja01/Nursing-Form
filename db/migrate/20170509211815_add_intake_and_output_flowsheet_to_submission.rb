class AddIntakeAndOutputFlowsheetToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :intake_time, :integer
    add_column :submissions, :ivf_one, :float
    add_column :submissions, :ivf_two, :float
    add_column :submissions, :ivf_three, :float
    add_column :submissions, :ivf_four, :float
    add_column :submissions, :ivf_five, :float
    add_column :submissions, :iv_medications, :float
    add_column :submissions, :tube_feeding, :float
    add_column :submissions, :po, :float
    add_column :submissions, :intake_other, :float
    add_column :submissions, :total_hourly_intake, :float
    add_column :submissions, :uo, :float
    add_column :submissions, :ct, :float
    add_column :submissions, :drains_jp, :float
    add_column :submissions, :output_ngt, :float
    add_column :submissions, :output_other, :float
    add_column :submissions, :total_hourly_output, :float
    add_column :submissions, :intake_running_total, :float
    add_column :submissions, :output_running_total, :float
  end
end
