json.array!(@tbanques) do |tbanque|
  json.extract! tbanque, :id, :banque_id, :type, :montant, :porteur
  json.url tbanque_url(tbanque, format: :json)
end
