class Technology < ApplicationRecord
    belongs_to :user
    has_many :project_technologies
    has_many :projects, through: :project_technologies
    has_many :blog_technologies
    has_many :blogs, through: :blog_technologies
    has_many :education_technologies
    has_many :educations, through: :education_technologies
    has_many :experience_technologies
    has_many :experiences, through: :experience_technologies 
end
