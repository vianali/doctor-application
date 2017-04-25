json.extract! patient, :id, :state, :first_name, :last_name, :email, :phone_number, :doctor_id, :created_at, :updated_at
json.url patient_url(patient, format: :json)