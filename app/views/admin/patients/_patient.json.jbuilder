json.extract! patient, :id, :name, :age, :gender, :created_at, :updated_at
json.url patient_url(patient, format: :json)