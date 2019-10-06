json.extract! donation, :id, :user_cpf, :hospital_name, :donated_amount, :donation_date, :created_at, :updated_at
json.url donation_url(donation, format: :json)
