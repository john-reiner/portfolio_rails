class Experience < ApplicationRecord
  belongs_to :user
  has_many :experience_technologies
  has_many :technologies, through: :experience_technologies
end
