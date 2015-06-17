json.array!(@folder_attachments) do |folder_attachment|
  json.extract! folder_attachment, :id, :owner_id, :client_id, :name_file
  json.url folder_attachment_url(folder_attachment, format: :json)
end
