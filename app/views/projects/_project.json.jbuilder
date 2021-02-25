json.extract! project, :id, :image, :url, :github, :summary, :user_id, :deployed, :created_at, :updated_at
json.technologies(project.technologies) do |technology|
    json.name technology.name
end
json.url project_url(project, format: :json)
