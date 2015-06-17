json.array!(@owners) do |owner|
  json.extract! owner, :id, :num, :codeowner, :nom, :prenom, :sexe, :date_nai, :lieu_nai, :phone, :address, :email
  json.url owner_url(owner, format: :json)
end
