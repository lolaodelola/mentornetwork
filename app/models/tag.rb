class Tag < ApplicationRecord
  has_many :mentor_tags
  has_many :mentors, through: :mentor_tags
end
