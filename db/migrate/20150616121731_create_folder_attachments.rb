class CreateFolderAttachments < ActiveRecord::Migration
  def change
    create_table :folder_attachments do |t|
      t.references :owner, index: true, foreign_key: true
      t.references :client, index: true, foreign_key: true
      t.references :chamber, index: true
      t.string :name_file

      t.timestamps null: false
    end
  end
end
