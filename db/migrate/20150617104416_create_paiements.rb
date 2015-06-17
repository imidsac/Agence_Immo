class CreatePaiements < ActiveRecord::Migration
  def change
    create_table :paiements do |t|
      t.string :num, limit: 10
      t.string :num_paie, limit: 30
      t.references :owner, index: true, foreign_key: true, default: -1
      t.references :client, index: true, foreign_key: true, default: -1
      t.references :banque, index: true, foreign_key: true, default: -1
      t.string :condition_reg, default: 'Espèces' # Espèces, Chèques et Virement.
      t.string :type_paiement
      t.string :motif
      t.decimal :debit, default: 0
      t.decimal :credit, default: 0
      t.datetime :datepaiement

      t.timestamps null: false
    end
  end
end
