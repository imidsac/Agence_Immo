json.array!(@contrats) do |contrat|
  json.extract! contrat, :id, :article, :description, :type_contrat
  json.url contrat_url(contrat, format: :json)
end
