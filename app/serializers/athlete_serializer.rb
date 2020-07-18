class AthleteSerializer < ActiveModel::Serializer
  #has_many :stats
  has_many :injuries
  has_one :team
  has_one :user
  attributes :id, :first_name, :last_name, :year, :image, :user_id, :team_id
end
