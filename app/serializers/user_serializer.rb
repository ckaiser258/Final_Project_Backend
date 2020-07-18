class UserSerializer < ActiveModel::Serializer
  has_many :teams
  has_many :athletes
  attributes :id, :username, :first_name, :last_name, :email
end
