json.extract! submission, :id, :patient_initials, :age, :gender, :admitting_primary_medical_diagnosis, :user_id, :week, :created_at, :updated_at
json.url submission_url(submission, format: :json)