class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :logo, :user_id
  has_one :user
  has_many :athletes
  has_many :injuries
  has_many :stats
end
