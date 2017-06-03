class AddDateOfActivityToNurseActivity < ActiveRecord::Migration[5.0]
  def change
    add_column :nurse_activities, :date_of_activity, :datetime
  end
end
