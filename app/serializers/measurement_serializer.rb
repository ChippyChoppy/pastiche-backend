class MeasurementSerializer < ActiveModel::Serializer
  attributes :id, :imperial, :metric
  has_many :mocktails
  has_many :mock_ingreds
end
