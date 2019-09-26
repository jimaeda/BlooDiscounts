json.extract! hospital, :id, :name, :city, :state, :a+, :a-, :b+, :b-, :o+, :o-, :ab+, :ab-, :created_at, :updated_at
json.url hospital_url(hospital, format: :json)
