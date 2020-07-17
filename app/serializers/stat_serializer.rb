class StatSerializer < ActiveModel::Serializer
  attributes :test_name, :result, :date
  has_one :athlete
  has_one :team
end
