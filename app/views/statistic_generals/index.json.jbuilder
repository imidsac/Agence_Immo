json.array!(@statistic_generals) do |statistic_general|
  json.extract! statistic_general, :id, :year, :month, :expense, :recipe
  json.url statistic_general_url(statistic_general, format: :json)
end
