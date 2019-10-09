json.extract! admin, :id, :adm_username, :password, :adm_name, :adm_cpf, :hospital_name, :created_at, :updated_at
json.url admin_url(admin, format: :json)
