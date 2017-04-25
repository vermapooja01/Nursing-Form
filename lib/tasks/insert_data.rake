require 'roo'

task :insert_patients => :environment do
  data_directory = "./lib/assets/patients"
  # Read all the directories
  directories = Dir.entries(data_directory)
  # Clean up the useless things
  directories.delete(".")
  directories.delete("..")
  directories.delete(".DS_Store")

  # Create a patient for each folder
  directories.each do |directory|
    # Get the full name of patient from directory name
    first_name = directory.split(', ').last
    last_name = directory.split(', ').first

    patient = Patient.find_or_initialize_by(name: (first_name + " " + last_name))
    # Save the patient object
    patient.save

    # Go inside directory and obtain the history excel file
    location_of_files = data_directory + '/'+ directory + "/"
    # Open the history file
    xlsx = Roo::Spreadsheet.open(location_of_files + 'history.xlsx')
    sheet = xlsx.sheet(0)
    # Get the headers from the file
    headers = sheet.row(1)

    # Insert histories
    (2..sheet.last_row).each do |i|
      # Get the headers from the file
			row = Hash[[headers, sheet.row(i)].transpose]
      # Create a history object to insert data into
			history_object = patient.histories.find_or_initialize_by(mr_number: row['mr'])
      # Check to see if the obeject was found
      if history_object.id.nil?
        # Execute a function to insert the data
        history_object.add_data_to_history_object(row)
        # Save the history object that was created
        byebug
        history_object.save
      else
        # Do nothing
      end
    end
      # =====================================================

      # Insert labs ============================================
      # (2..sheet.last_row).each do |i|
      #   # Get the headers from the file
  		# 	row = Hash[[headers, sheet.row(i)].transpose]
      #   # Create a history object to insert data into
  		# 	history_object = patient.histories.find_or_initialize_by(mr_number: row['mr'])
      #   # Check to see if the obeject was found
      #   if history_object.id.nil?
      #     # Execute a function to insert the data
      #     history_object.add_data_to_history_object(row)
      #     # Save the history object that was created
      #     history_object.save
      #   else
      #     # Do nothing
      #   end
      # end
      # =========================================================




  end
end
