class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :num
      t.string :codeclient
      t.string :nom
      t.string :prenom
      t.string :sexe
      t.date :data_nai
      t.string :lieu_nai
      t.string :nationalite
      t.string :profession
      t.string :phone
      t.text :address
      t.string :email
      t.string :type_cl, limit:1, default: 'o' # 'o' ordinnaire 'g' governement
      t.decimal :solde, default: 0 # L'argent de client pour ces commandes
      t.decimal :points, default: 0 # Point de fidélité
      t.string :etat, limit: 10, default: 'a' #actif
      t.date :date_ins

      t.timestamps null: false
    end
    add_index :clients, :codeclient,                unique: true
  end
end
