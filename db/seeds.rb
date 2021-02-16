# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
    email: "John@gmail.com",
    password: "apassword",
    first_name: "John",
    last_name: "Reiner",
    image: "someimageurl",
    bio: "some long bio about myself",
    location: "keyport nj",
)

10.times do |p| 
    Project.create!(
        name: "Project #{p + 1}",
        image: "Project Image #{p + 1}",
        url: "projecturl/#{p + 1}",
        github: "project-github_#{p + 1}",
        summary: "some long text about project number #{p + 1}",
        deployed: false,
        user_id: 1
    )
end

10.times do |b|
    Blog.create!(
        title: "Blog Title #{b + 1}",
        url: "blogurl/#{b + 1}",
        user_id: 1
    )
end

5.times do |l|
    Link.create!(
        name: "Link number #{l + 1}",
        url: "linkurl/#{l + 1}",
        user_id: 1
    )
end

3.times do |ed|
    Education.create!(
        end_date: "201#{ed+1}",
        title: "Education number #{ed+1}",
        description: "Some long description about Edcuation Number #{ed+1}",
        user_id: 1
    )
end

4.times do |ex|
    Experience.create!(
        start_date: "#{ex+1}/201#{ex}",
        end_date: "#{ex+1}/201#{ex+1}",
        title: "Experience Title #{ex+1}",
        description: "Some Long description about Experience Number #{ex+1}",
        user_id: 1
    )
end

20.times do |t|
    Technology.create!(
        name: "Technology #{t+1}",
        image: "Technolgy Image #{t+1}"
    )
end