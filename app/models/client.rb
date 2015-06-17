class Client < ActiveRecord::Base
  has_many :folder_attachments

  validates_presence_of :nom, :prenom, :phone, :address
  validates_uniqueness_of :phone, scope: [:nom, :prenom]
  before_validation :verifier_client

  has_attached_file :avatar,
                    :styles => {
                        :medium => "300x300>",
                        :thumb => "100x100>"},
                    :default_url => "/public/system/images.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  scope :list, -> { select("clients.id, clients.nom, clients.prenom, clients.sexe, address, phone,email,type_cl,avatar_file_name, clients.nationalite, clients.ville, clients.date_nai, clients.lieu_nai, codeclient, clients.etat ").where("clients.id != ? ", -1).order(:nom, :type_cl) }

  scope :tout, -> { list.where("clients.id != ? and etat = ?", -1, 'a').order(:nom, :type_cl) }
  scope :etat_actif, -> { list.where("etat = ?", 'a').order(:nom, :type_cl) }
  scope :detaillant, -> { list.where("id != ? and type_cl = ?", -1, 'o').order(:nom) }
  scope :grossiste, -> { list.where("id != ? and type_cl = ?", -1, 'g').order(:nom) }

  #before_save :verifier_client


  def verifier_client
    self.nom="#{nom}".upcase
    self.prenom="#{prenom}".capitalize
  end

end
