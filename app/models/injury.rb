class Injury < ApplicationRecord
  belongs_to :athlete
  belongs_to :team

  validates :severity, numericality: {greater_than: 0, less_than: 6}
end
