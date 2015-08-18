class Client < ActiveRecord::Base
  has_many :folder_attachments

  validates_presence_of :nom, :prenom, :phone, :address
  validates_uniqueness_of :phone, scope: [:nom, :prenom]
  before_validation :verifier_client

  before_validation :add_default_matricule
  #before_create :add_default_matricule
  after_create :after_insert
  #after_save :touch_subject
  #after_destroy :delete_related_sections

  validates_presence_of :nom, :prenom
  validates_length_of :nom, :prenom, :maximum => 255
  validates_presence_of :codeclient
  validates_length_of :codeclient, :within => 1..255
  # use presence_of with length_of to disallow spaces
  validates_uniqueness_of :codeclient
  # for unique values by subject use ":scope => :subject_id"

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


  private

  def num_valeur
    valeur_num = Client.maximum(:num).to_i
    m = valeur_num.to_i+1
    if m == nil
      return "00001"
    elsif m < 10
      return "0000#{m}"
    elsif m < 100
      return "000#{m}"
    elsif m < 1000
      return "00#{m}"
    elsif m < 10000
      return "0#{m}"
    end
  end

  def add_default_matricule
    if codeclient.blank?
      @clientID = Client.maximum(:id)
      #self.codeclient = "#{id}-#{name.parameterize}"
      self.num = num_valeur
      self.codeclient = "#{num_valeur}-#{Time.now.strftime("%y")}#{Time.now.strftime("%y").to_i+1}"

    end
  end

  def after_insert
=begin
    annee_scolaire = Exercise.maximum(:year)
    id_client = Client.maximum(:id)
    Inscription.create!(
        annee_scolaire: annee_scolaire,
        client_id: id_client,
        date_ins: created_at
    )
=end
  end

end
