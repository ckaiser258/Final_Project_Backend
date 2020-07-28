class StatSerializer < ActiveModel::Serializer
  has_one :athlete
  has_one :team

  attributes :id, :test_name, :result, :date, :athlete_id, :team_id
end
