class FolderAttachment < ActiveRecord::Base
  belongs_to :owner
  belongs_to :client
end
