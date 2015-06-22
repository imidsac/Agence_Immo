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

  end
end
