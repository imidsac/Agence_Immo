json.array!(@chambers) do |chamber|
  json.extract! chamber, :id, :building_id, :name, :type_chamber
  json.url chamber_url(chamber, format: :json)
end
