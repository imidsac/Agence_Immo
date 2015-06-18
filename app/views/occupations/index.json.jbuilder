json.array!(@occupations) do |occupation|
  json.extract! occupation, :id, :client_id, :chamber_id, :date_occupation, :etat
  json.url occupation_url(occupation, format: :json)
end
