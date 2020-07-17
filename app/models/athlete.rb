class Athlete < ApplicationRecord
  belongs_to :user
  belongs_to :team
  # has_many :stats
  has_many :injuries
end
