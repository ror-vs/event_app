json.extract! speaker, :id, :first_name, :last_name, :email, :url, :created_at, :updated_at
json.url speaker_url(speaker, format: :json)
