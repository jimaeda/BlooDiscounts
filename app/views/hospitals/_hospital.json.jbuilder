json.extract! hospital, :id, :hosp_name, :hosp_city, :hosp_state, :a_plus, :a_minus, :b_plus, :b_minus, :o_plus, :o_minus, :ab_plus, :ab_minus, :created_at, :updated_at
json.url hospital_url(hospital, format: :json)
