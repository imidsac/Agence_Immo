class AddBuildingToFolderAttachments < ActiveRecord::Migration
  def change
    add_reference :folder_attachments, :building, index: true, foreign_key: true
  end
end
