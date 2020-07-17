class AthleteSerializer < ActiveModel::Serializer
  #has_many :stats
  has_many :injuries
  has_one :team
  has_one :user
  attributes :first_name, :last_name, :year, :image
end
