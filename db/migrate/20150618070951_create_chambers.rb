class CreateChambers < ActiveRecord::Migration
  def change
    create_table :chambers do |t|
      t.references :building, index: true, foreign_key: true
      t.string :name
      t.string :type_chamber, default: 'Appartement'    # Appartement, Trois chambres salon, Deux chambres salon, Chambre salon,
      t.string :niveau                                  # Niveau build R, R+1, R+2 ...
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
