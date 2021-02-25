json.extract! user, :id, :email, :password, :first_name, :last_name, :image, :bio, :location, :created_at, :updated_at

json.projects(user.projects) do |project|
    json.name project.name
    json.image project.image
    json.address project.address
    json.github project.github
    json.summary project.summary
    json.deployed project.deployed
end

json.blogs(user.blogs) do |blog|
    json.title blog.title
    json.address blog.address
end

json.url user_url(user, format: :json)