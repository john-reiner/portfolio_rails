json.extract! project, :id, :image, :address, :github, :summary, :user_id, :deployed, :created_at, :updated_at
json.technologies(project.technologies) do |technology|
    json.id technology.id
    json.name technology.name
    json.image technology.image
end
json.url project_url(project, format: :json)
