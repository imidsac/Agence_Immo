json.array!(@delais) do |delai|
  json.extract! delai, :id, :name, :description, :nb_day
  json.url delai_url(delai, format: :json)
end
