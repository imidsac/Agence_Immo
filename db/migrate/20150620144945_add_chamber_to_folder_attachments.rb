class AddChamberToFolderAttachments < ActiveRecord::Migration
  def change
    add_reference :folder_attachments, :chamber, index: true, foreign_key: true
  end
end
