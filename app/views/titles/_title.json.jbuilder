json.extract! title, :id, :url, :created_at, :updated_at
json.url title_url(title, format: :json)
