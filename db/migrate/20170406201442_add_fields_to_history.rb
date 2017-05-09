class AddFieldsToHistory < ActiveRecord::Migration[5.0]
  def change
    add_column :histories, :service, :string
    add_column :histories, :date_of_birth, :datetime
    add_column :histories, :marital_status_history, :string
    add_column :histories, :address, :string
    add_column :histories, :phone, :string
    add_column :histories, :height, :string
    add_column :histories, :weight, :float
    add_column :histories, :occupation, :string
    add_column :histories, :religion, :string
    add_column :histories, :allergies, :string
    add_column :histories, :cultural_spiritual_practice, :string
    add_column :histories, :code_status, :string
    add_column :histories, :language, :string
    add_column :histories, :advance_directive, :string
    add_column :histories, :barriers_to_communication, :string
    add_column :histories, :admitting_diagonosis, :string
    add_column :histories, :isolation_precaution, :string
    add_column :histories, :medical_history, :string
    add_column :histories, :surgical_history, :string
    add_column :histories, :current_medications, :string
    add_column :histories, :diet_history, :string
    add_column :histories, :tobacco_use, :string
    add_column :histories, :alcohol_drug_use, :string
    add_column :histories, :immunizations, :string
    add_column :histories, :family_history, :string
    add_column :histories, :living_arrangements, :string
    add_column :histories, :social_hx, :string
    add_column :histories, :hobbies, :string
    add_column :histories, :daily_weekly_routine, :string
  end
end
