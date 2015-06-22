class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.references :owner, index: true, foreign_key: true
      t.string :name
      t.string :type_build                          # Villa, Etage...
      t.string :niveau                              # Niveau build R, R+1, R+2 ...
      t.string :door
      t.string :street
      t.string :quartier
      t.string :ville
      t.boolean :unique, default: false
      t.decimal :previen, default: 0
      t.decimal :pordinaire, default: 0
      t.decimal :pong, default: 0
      t.decimal :pgov, default: 0
      t.decimal :pourcent_pordinaire, default: 0
      t.decimal :pourcent_pong, default: 0
      t.decimal :pourcent_pgov, default: 0

      t.timestamps null: false
    end
  end
end
