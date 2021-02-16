class Blog < ApplicationRecord
    belongs_to :user
    has_many :blog_technologies
    has_many :technologies, through: :blog_technologies
end
