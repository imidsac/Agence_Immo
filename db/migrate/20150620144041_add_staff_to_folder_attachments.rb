class AddStaffToFolderAttachments < ActiveRecord::Migration
  def change
    add_reference :folder_attachments, :staff, index: true, foreign_key: true
  end
end
