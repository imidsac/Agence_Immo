class CreateDepenses < ActiveRecord::Migration
  def change
    create_table :depenses do |t|
      t.string :description
      t.references :categoriedep, index: true, foreign_key: true
      t.decimal :montant
      t.string :etat

      t.timestamps null: false
    end
  end
end
