class CreateFolderAttachments < ActiveRecord::Migration
  def change
    create_table :folder_attachments do |t|
      t.references :client, index: true, foreign_key: true
      t.string :file_name

      t.timestamps null: false
    end
  end
end
