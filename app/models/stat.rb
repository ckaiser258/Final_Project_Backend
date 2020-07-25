class Stat < ApplicationRecord
  belongs_to :athlete
  belongs_to :team

  validates :test_name, length: { minimum: 1 }
end