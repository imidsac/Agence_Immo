class CreateOccupations < ActiveRecord::Migration
  def change
    create_table :occupations do |t|
      t.references :client, index: true, foreign_key: true
      t.references :building, index: true, foreign_key: true
      t.references :chamber, index: true, foreign_key: true
      t.references :modalitepaiement, index: true, foreign_key: true
      t.string :etat
      t.date :date_occupation

      t.timestamps null: false
    end
  end
end
