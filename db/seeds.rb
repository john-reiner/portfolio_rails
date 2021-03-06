# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
    email: "John.a.Reiner@gmail.com",
    password: "Namtab92",
    first_name: "John",
    last_name: "Reiner",
    image: "https://media-exp1.licdn.com/dms/image/C4D03AQGBtZ9WqHNY2A/profile-displayphoto-shrink_800_800/0/1613566150473?e=1619049600&v=beta&t=kQWCzNsNAf6qC_6wZHz-X-89vc-Fs-ZMBSOLnz1KDJg",
    bio: "Full Stack Software Engineer with a background in finance and banking.",
    location: "Keyport NJ",
)

Project.create!(
    name: "Wilson",
    image: "https://johnreiner.me/photos/wilson.png",
    address: "https://john-reiner.github.io/wilson-2.0",
    github: "https://github.com/john-reiner/wilson-2.0",
    summary: "Wilson is an application designed to help users create and manage their goals. Each Goal has many tasks and when a user marks all the tasks assigned to that goal off, Wilson recognises that the goal is complete!",
    deployed: true,
    user_id: 1
)

Project.create!(
    name: "React Tetris",
    image: "https://johnreiner.me/photos/tetris.png",
    address: "https://john-reiner.github.io/wilson-2.0",
    github: "https://github.com/john-reiner/deploy_react_tetris",
    summary: "Tetris in React is the game Tetris built 100% in React.js. There are no game libraries used to help develop the game, everything is built using React, React Hooks and Styled Components. Users can sign in or create a new account, play the game, and view the leaderboard to see their scores",
    deployed: true,
    user_id: 1
)

Project.create!(
    name: "Portfolio Admin",
    image: "https://johnreiner.me/photos/tetris.png",
    address: "http://localhost:3001/",
    github: "https://github.com/john-reiner/portfolio_rails",
    summary: "This is the administration side to my portfolio.",
    deployed: true,
    user_id: 1
)

Project.create!(
    name: "Portfolio Admin",
    image: "https://johnreiner.me/photos/tetris.png",
    address: "http://localhost:3001/",
    github: "https://github.com/john-reiner/portfolio_rails",
    summary: "This is the administration side to my portfolio.",
    deployed: true,
    user_id: 1
)

Project.create!(
    name: "Portfolio Admin",
    image: "https://johnreiner.me/photos/tetris.png",
    address: "http://localhost:3001/",
    github: "https://github.com/john-reiner/portfolio_rails",
    summary: "This is the administration side to my portfolio.",
    deployed: true,
    user_id: 1
)

Project.create!(
    name: "Portfolio Admin",
    image: "https://johnreiner.me/photos/tetris.png",
    address: "http://localhost:3001/",
    github: "https://github.com/john-reiner/portfolio_rails",
    summary: "This is the administration side to my portfolio.",
    deployed: true,
    user_id: 1
)

Technology.create!(
    name: "Rails",
    image: "https://cdn3.iconfinder.com/data/icons/popular-services-brands-vol-2/512/ruby-on-rails-512.png",
    user_id: 1
)

Technology.create!(
    name: "React JS",
    image: "https://cdn4.iconfinder.com/data/icons/logos-3/600/React.js_logo-512.png",
    user_id: 1
)

Technology.create!(
    name: "Postgresql",
    image: "https://cdn4.iconfinder.com/data/icons/logos-brands-5/24/postgresql-512.png",
    user_id: 1
)

Technology.create!(
    name: "JavaScript",
    image: "https://cdn2.iconfinder.com/data/icons/designer-skills/128/code-programming-javascript-software-develop-command-language-512.png",
    user_id: 1
)

Technology.create!(
    name: "Ruby",
    image: "https://cdn1.iconfinder.com/data/icons/cash-coin-essentials-colored/48/JD-01-512.png",
    user_id: 1
)

Technology.create!(
    name: "Python",
    image: "https://cdn3.iconfinder.com/data/icons/logos-and-brands-adobe/512/267_Python-512.png",
    user_id: 1
)

Link.create!(
    name: "GitHub",
    address: "https://github.com/john-reiner",
    image: "https://cdn3.iconfinder.com/data/icons/colorful-guache-social-media-logos-1/159/social-media_GitHub-512.png",
    user_id: 1
)

Link.create!(
    name: "Linkedin",
    address: "https://www.linkedin.com/in/john-reiner/",
    image: "https://cdn1.iconfinder.com/data/icons/pen-sketch-icons-set/256/social_media_icons_pen_sketch_icons_set_256x256_0010_linkedin.png",
    user_id: 1
)

Link.create!(
    name: "Linkedin",
    address: "https://www.hackerrank.com/JohnReiner",
    image: "https://cdn3.iconfinder.com/data/icons/logos-and-brands-adobe/512/160_Hackerrank-512.png",
    user_id: 1
)




# 10.times do |p| 
#     Project.create!(
#         name: "Project #{p + 1}",
#         image: "Project Image #{p + 1}",
#         url: "projecturl/#{p + 1}",
#         github: "project-github_#{p + 1}",
#         summary: "some long text about project number #{p + 1}",
#         deployed: false,
#         user_id: 1
#     )
# end

# 10.times do |b|
#     Blog.create!(
#         title: "Blog Title #{b + 1}",
#         url: "blogurl/#{b + 1}",
#         user_id: 1
#     )
# end

# 5.times do |l|
#     Link.create!(
#         name: "Link number #{l + 1}",
#         url: "linkurl/#{l + 1}",
#         user_id: 1
#     )
# end

# 3.times do |ed|
#     Education.create!(
#         end_date: "201#{ed+1}",
#         title: "Education number #{ed+1}",
#         description: "Some long description about Edcuation Number #{ed+1}",
#         user_id: 1
#     )
# end

# 4.times do |ex|
#     Experience.create!(
#         start_date: "#{ex+1}/201#{ex}",
#         end_date: "#{ex+1}/201#{ex+1}",
#         title: "Experience Title #{ex+1}",
#         description: "Some Long description about Experience Number #{ex+1}",
#         user_id: 1
#     )
# end

# 5.times do |t|
#     Technology.create!(
#         name: "Technology #{t+1}",
#         image: "Technolgy Image #{t+1}",
#         user_id: 1
#     )
# end

# 30.times do
#     ProjectTechnology.create!(
#         project_id: rand(1..10),
#         technology_id: rand(1..5)
#     )

# end

# 30.times do
#     BlogTechnology.create!(
#         blog_id: rand(1..10),
#         technology_id: rand(1..20)
#     )
# end

# 10.times do
#     EducationTechnology.create!(
#         education_id: rand(1..3),
#         technology_id: rand(1..20)
#     )
# end

# 12.times do
#     ExperienceTechnology.create!(
#         experience_id: rand(1..4),
#         technology_id: rand(1..20)
#     )
# end