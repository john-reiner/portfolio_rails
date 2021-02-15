json.extract! user, :id, :email, :password, :first_name, :last_name, :image, :bio, :location, :created_at, :updated_at
json.url user_url(user, format: :json)
