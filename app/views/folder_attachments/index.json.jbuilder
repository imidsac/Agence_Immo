json.array!(@folder_attachments) do |folder_attachment|
  json.extract! folder_attachment, :id, :client_id, :file_name
  json.url folder_attachment_url(folder_attachment, format: :json)
end
