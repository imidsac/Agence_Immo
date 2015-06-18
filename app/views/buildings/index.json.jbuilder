json.array!(@buildings) do |building|
  json.extract! building, :id, :owner_id, :name, :street, :door, :quartier, :ville
  json.url building_url(building, format: :json)
end
