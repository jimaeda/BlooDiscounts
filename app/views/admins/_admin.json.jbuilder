json.extract! admin, :id, :username, :encrypted_password, :name, :cpf, :hospital_name, :created_at, :updated_at
json.url admin_url(admin, format: :json)
