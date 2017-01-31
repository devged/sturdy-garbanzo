json.extract! personnel, :id, :position_id, :first_name, :last_name, :DOB, :created_at, :updated_at
json.url personnel_url(personnel, format: :json)