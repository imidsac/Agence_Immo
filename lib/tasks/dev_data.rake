# encoding: utf-8

namespace :dev_data do
  desc "Fill database with sample data"
  task create: :environment do

    Rake::Task['db:drop'].invoke
    puts "===> db drop!"
    Rake::Task['db:create'].invoke
    puts "===> db create!"
    Rake::Task['db:migrate'].invoke
    puts "===> db migrate!"

    Delai.create!(
        name: "Max delai retart de paiement",
        description: "quelque informations.",
        nb_day: 60
    )
    Delai.create!(
        name: "Delai de grace pour retart de paiement",
        description: "quelque informations.",
        nb_day: 75
    )
    Delai.create!(
        name: "Max delai poursuit judicieure",
        description: "quelque informations.",
        nb_day: 90
    )

    puts "===> Sample date have been set in DB  Delais!"

    Categoriedep.create!(
        id: -1,
        name: "AUTRE"
    )
    Categoriedep.create!(
        name: "AVANT SALAIRE"
    )
    Categoriedep.create!(
        name: "E.D.M"
    )
    Categoriedep.create!(
        name: "LOYER"
    )
    Categoriedep.create!(
        name: "TRANSPORT"
    )
    Categoriedep.create!(
        name: "CARBURANT"
    )
    Categoriedep.create!(
        name: "CARTE DE RECHARGE"
    )
    Categoriedep.create!(
        name: "REPARATION DE AUTO/MOTO"
    )

    puts "===> Sample date have been set in DB  Categories depenses!"

    Modalitepaiement.create!(
        code: "001",
        mode: "Chaque mois",
        description: "Paiement mensuel"
    )
    Modalitepaiement.create!(
        code: "002",
        mode: "Chaque 3 mois",
        description: "Paiement Trimestriel",
        remise: 10
    )
    Modalitepaiement.create!(
        code: "003",
        mode: "Chaque 12 mois",
        description: "Paiement annuel",
        remise: 25
    )
    puts "===> Sample date have been set in DB  Modalité de paiement!"

    Banque.create!(
        id: -1,
        nom: "CAISSE",
        compte: "LOCAL"
    )
    Banque.create!(
        nom: "AUTRE",
        compte: "AUTRE"
    )
    Banque.create!(
        nom: "BDM",
        compte: "xx xx xx xx xx - xx"
    )
    Banque.create!(
        nom: "BNDA",
        compte: "xx xx xx xx xx - xx"
    )

    puts "===> Sample date have been set in DB  Banques!"


    (1..100).map do |i|
      Client.create!(
          nom: "nom-#{i}",
          prenom: "prenom-#{i}",
          phone: "number-#{i}",
          address: "address-#{i}"
      )
    end
    puts "===> Sample date have been set in DB  Clients!"


    (1..10).map do |i|
      Owner.create!(
          nom: "nom-#{i}",
          prenom: "prenom-#{i}",
          phone: "number-#{i}",
          address: "address-#{i}"
      )
    end
    puts "===> Sample date have been set in DB  Owners!"

    Contrat.create!(
        article: "Article 01",
        description: "AMCI loue par le présent contrat  un Magasin à M. Kalil CISSE situé à Sirakoro."
    )
    Contrat.create!(
        article: "Article 02",
        description: "Le locataire déclare parfaitement connaitre le lieu  loué pour l’avoir vu et visité et consent à le prendre."
    )
    Contrat.create!(
        article: "Article 03",
        description: "la présente location est consentie avec effet à partir de la date de signature du contrat  moyennant un loyer mensuel de 60 000F/CFA {Soixante Mille Francs CFA} M. Kalil CISSE s’engage à payer directement à l’agence une caution de 60 000F CFA {Soixante Mille Francs CFA} plus quatre mois d’avance soit la somme de 240 000F CFA { Deux Cent Quarante Mille Frans CFA} des la signature du contrat."
    )

    Contrat.create!(
        article: "Article 04",
        description: "Le locataire se libérera des termes comme indiqués à l’autre par payement contre reçu."
    )
    Contrat.create!(
        article: "Article 05",
        description: "Le présent contrat est conclu pour une durée d’une année. Renouvelable par tacite reconduction. Au cas où l’une des parties n’aurait pas l’intention de renouveler aux mêmes conditions le présent contrat, elle devra le notifier trois {3} mois avant l’expiration du contrat par écrit."
    )
    Contrat.create!(
        article: "Article 06",
        description: "Le locataire devra laisser le bailleur ou son architecte visiter les lieux une fois par an pour s’assurer de l’entretien des locaux."
    )
    Contrat.create!(
        article: "Article 07",
        description: "Le locataire est tenu des réparations d’entretien et répond des dégradations et pertes dues à un défaut d’entretien au cours du présent contrat."
    )
    Contrat.create!(
        article: "Article 08",
        description: "Les grosses réparations nécessaires et urgentes telles que celles des murs, des voûtes, des poutres, des toitures, des murs de soutènement, des tuyauteries des fausses sceptiques et des puisards sont à la charge du bailleur.	"
    )
    Contrat.create!(
        article: "Article 09",
        description: "La cession ou la sous location du local est  interdite, sauf autorisation préalable du bailleur."
    )
    Contrat.create!(
        article: "Article 10",
        description: "Aucune modification ou aménagement ne peut être fait sans l’accord du bailleur et restera le cas échéant la propriété du bailleur sans indemnité de sa part."
    )
    Contrat.create!(
        article: "Article 11",
        description: "Le locataire devra satisfaire toutes les charges ordinairement tenus ainsi que les charges du local, les consommations d’eau, d’électricité et de téléphone."
    )
    Contrat.create!(
        article: "Article 12",
        description: "A l’expiration du contrat, le locataire doit mettre en bon état le local {peinture intérieure et extérieure}."
    )
    Contrat.create!(
        article: "Article 13",
        description: "Les paiements sont effectués mensuellement au plus tard le 10 du mois courant."
    )

    puts "===> Sample date have been set in DB  Contrats!"
  end
end
