class User < ApplicationRecord
    has_many :projects 
    has_many :blogs
    has_many :links
    has_many :educations 
    has_many :experiences
end
