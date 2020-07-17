class TeamSerializer < ActiveModel::Serializer
  attributes :name, :logo
  has_one :user
  has_many :athletes
  has_many :injuries
  # has_many :stats
end
