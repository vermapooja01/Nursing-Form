class AddSkinMucuousMembraneToSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :skin_type, :string
    add_column :submissions, :pink, :string
    add_column :submissions, :pale, :string
    add_column :submissions, :cyanotic, :string
    add_column :submissions, :jaundiced, :string
    add_column :submissions, :mottled, :string
    add_column :submissions, :flushed, :string
    add_column :submissions, :cool, :string
    add_column :submissions, :warm, :string
    add_column :submissions, :hot, :string
    add_column :submissions, :moist, :string
    add_column :submissions, :diaphoretic, :string
    add_column :submissions, :dry, :string
    add_column :submissions, :turgor, :string
    add_column :submissions, :turgor_comments, :text
  end
end
