json.extract! technology, :id, :name, :image, :created_at, :updated_at
json.url technology_url(technology, format: :json)

json.projects(technology.projects) do |project|
    json.name project.name
end