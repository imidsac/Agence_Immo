class CreateContrats < ActiveRecord::Migration
  def change
    create_table :contrats do |t|
      t.string :article
      t.text :description
      t.string :type_contrat, limit: 10, default: 'C'

      t.timestamps null: false
    end
    add_index(:contrats, [:article, :type_contrat], unique: true)
  end
end
