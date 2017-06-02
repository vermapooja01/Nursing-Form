class History < ApplicationRecord
  belongs_to :patient
  has_many :labs, dependent: :destroy
  has_many :mars, dependent: :destroy
  has_many :prns, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :one_time_orders, dependent: :destroy

  # A function to create a history object from XLSX files
  def add_data_to_history_object(data)
    # Set parameters
    self.patient_name_history = data['name']
    self.date_of_admission = data['date_of_admission']
    self.mr_number = data['mr']
    self.service = data['service']
    self.date_of_birth = data['dob']
    self.marital_status_history = data['marital_status']
    self.address = data['address']
    self.phone = data['phone']
    self.height = data['height']
    self.weight = data['weight']
    self.occupation = data['occupation']
    self.religion = data['religion']
    self.allergies = data['allergies']
    self.cultural_spiritual_practice = data['cultural_spiritual_practices']
    self.code_status = data['code_status']
    self.language = data['language']
    self.advance_directive = data['advance_directive']
    self.barriers_to_communication = data['barriers_to_communication']
    self.admitting_diagonosis = data['admitting_diagnosis']
    self.isolation_precaution = data['isolation_precautions']
    self.medical_history = data['medical_history']
    self.surgical_history = data['surgical_history']
    self.current_medications = data['current_medications']
    self.diet_history = data['diet']
    self.tobacco_use = data['tobacco_use']
    self.alcohol_drug_use = data['alcohol_drug_use']
    self.immunizations = data['immunizations']
    self.family_history = data['family_history']
    self.living_arrangements = data['living_arrangements']
    self.social_hx = data['social_hx']
    self.hobbies = data['hobbies']
    self.daily_weekly_routine = data['daily_weekly_routine']
    byebug
  end

end
