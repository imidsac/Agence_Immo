json.array!(@modalitepaiements) do |modalitepaiement|
  json.extract! modalitepaiement, :id, :mode, :description
  json.url modalitepaiement_url(modalitepaiement, format: :json)
end
