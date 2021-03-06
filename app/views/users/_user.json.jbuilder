json.extract! user, :id, :email, :first_name, :last_name, :title, :image, :tech_bio, :bio, :location, :created_at, :updated_at

json.links(user.links) do |link|
    json.id link.id
    json.name link.name 
    json.address link.address
    json.image link.image
end

json.projects(user.projects) do |project|
    json.id project.id
    json.name project.name
    json.image project.image
    json.address project.address
    json.github project.github
    json.summary project.summary
    json.deployed project.deployed
    json.technologies(project.technologies) do |technology|
        json.id technology.id
        json.name technology.name
        json.image technology.image
    end
end

json.technologies(@technologies) do |technology|
    json.id technology.id
    json.name technology.name
    json.image technology.image
end

json.skills(user.skills) do |skill|
    json.id skill.id
    json.name skill.name
    json.image skill.image
end

json.blogs(user.blogs) do |blog|
    json.id blog.id
    json.title blog.title
    json.address blog.address
    json.image blog.image
    json.summary blog.summary
    json.date blog.date
    json.technologies(blog.technologies) do |technology|
        json.id technology.id
        json.name technology.name
        json.image technology.image
    end
end

json.educations(user.educations) do |education|
    json.id education.id
    json.end_date education.end_date
    json.title education.title
    json.description education.description
    json.address education.address
    json.technologies(education.technologies) do |technology|
        json.id technology.id
        json.name technology.name
        json.image technology.image
    end
    json.skills(education.skills) do |skill|
        json.id skill.id
        json.name skill.name
        json.image skill.image
    end
end

json.experiences(user.experiences) do |experience|
    json.id experience.id
    json.start_date experience.start_date
    json.end_date experience.end_date
    json.title experience.title
    json.description experience.description
    json.technologies(experience.technologies) do |technology|
        json.id technology.id
        json.name technology.name
        json.image technology.image
    end
    json.skills(experience.skills) do |skill|
        json.id skill.id
        json.name skill.name
        json.image skill.image
    end
end

json.url user_url(user, format: :json)