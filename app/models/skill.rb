class Skill < ApplicationRecord
    belongs_to :user
    has_many :education_skills
    has_many :educations, through: :education_skills
    has_many :experiences_skills
    has_many :experiences, through: :experiences_skills
end
