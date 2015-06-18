class Occupation < ActiveRecord::Base
  belongs_to :client
  belongs_to :chamber
end
