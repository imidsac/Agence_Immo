class Paiement < ActiveRecord::Base
  belongs_to :owner
  belongs_to :client
  belongs_to :banque
end
