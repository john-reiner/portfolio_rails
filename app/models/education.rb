class Education < ApplicationRecord
  belongs_to :user
  has_many :education_technologies
  has_many :technologies, through: :education_technologies
  has_many :education_skills
  has_many :skills, through: :education_skills
end
