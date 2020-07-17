class InjurySerializer < ActiveModel::Serializer
  attributes :site, :description, :severity, :date
  has_one :athlete
  has_one :team
end
