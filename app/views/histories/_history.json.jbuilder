json.extract! history, :id, :name, :date_of_admission, :mr_number, :created_at, :updated_at
json.url history_url(history, format: :json)