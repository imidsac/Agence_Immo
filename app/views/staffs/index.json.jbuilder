json.array!(@staffs) do |staff|
  json.extract! staff, :id, :first_name, :first_name, :gender, :date_nai, :lieu_nai, :nationality, :phone, :email, :address, :post
  json.url staff_url(staff, format: :json)
end
