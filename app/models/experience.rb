class Experience < ApplicationRecord
  belongs_to :user
  has_many :experience_technologies
  has_many :technologies, through: :experience_technologies

  has_many :experience_skills
  has_many :skills, through: :experience_skills
end
