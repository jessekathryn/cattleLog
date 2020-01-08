json.extract! cow, :id, :name, :tag_number, :cow_status, :age, :birthdate, :weight, :health, :color, :user_id, :notes, :field_name, :created_at, :updated_at
json.url cow_url(cow, format: :json)
