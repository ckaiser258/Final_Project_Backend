class InjurySerializer < ActiveModel::Serializer
  has_one :athlete
  has_one :team

  attributes :id, :site, :description, :severity, :date, :athlete_id, :team_id
end
