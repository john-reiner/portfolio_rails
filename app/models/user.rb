class User < ApplicationRecord
    has_secure_password
    has_many :technologies
    has_many :projects 
    has_many :blogs
    has_many :links
    has_many :educations 
    has_many :experiences
    has_many :skills
end
