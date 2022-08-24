class SerializableMeasurement < JSONAPI::Serializable::Resource
  type 'measurements'

  attributes :name, :value, :created_at
end