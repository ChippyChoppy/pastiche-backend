class MeasurementSerializer < ActiveModel::Serializer
  attributes :id, :imperial, :metric
  has_many :mocktails
end
