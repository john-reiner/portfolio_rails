class Technology < ApplicationRecord
    belongs_to :user
    has_many :project_technologies
    has_many :blog_technologies
    has_many :education_technologies
    has_many :experience_technologies
end
