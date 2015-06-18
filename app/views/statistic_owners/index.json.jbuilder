json.array!(@statistic_owners) do |statistic_owner|
  json.extract! statistic_owner, :id, :year, :month, :provide, :pay
  json.url statistic_owner_url(statistic_owner, format: :json)
end
