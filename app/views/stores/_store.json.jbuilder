json.extract! store, :id, :name, :category, :address, :email, :phone, :created_at, :updated_at
json.url store_url(store, format: :json)
