class Team < ApplicationRecord
  belongs_to :user
  has_many :athletes
  has_many :injuries, through: :athletes
  # has_many :stats, through: :athletes

  validates :name, presence: { message: "must be given" }
end
