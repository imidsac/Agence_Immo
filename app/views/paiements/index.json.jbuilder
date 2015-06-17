json.array!(@paiements) do |paiement|
  json.extract! paiement, :id, :num, :num_paie, :owner_id, :client_id, :type_paiement, :motif, :datepaiement
  json.url paiement_url(paiement, format: :json)
end
