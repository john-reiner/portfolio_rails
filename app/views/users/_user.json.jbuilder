json.extract! user, :id, :email, :password, :first_name, :last_name, :image, :bio, :location, :created_at, :updated_at

json.projects(user.projects) do |project|
    json.name project.name
    json.image project.image
    json.url project.url
    json.github project.github
    json.summary project.summary
    json.deployed project.deployed
end

json.url user_url(user, format: :json)