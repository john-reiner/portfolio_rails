class Project < ApplicationRecord
  belongs_to :user
  has_many :project_technologies
  has_many :technologies, through: :project_technologies
end
