class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :num
      t.string :codeowner
      t.string :nom
      t.string :prenom
      t.string :sexe
      t.date :date_nai
      t.string :lieu_nai
      t.string :nationalite
      t.string :profession
      t.string :phone
      t.text :address
      t.string :email
      t.string :type_ow, limit:1, default: 'o' # 'o' ordinnaire 'g' governement
      t.string :etat, limit: 10, default: 'a' #actif
      t.date :date_ins

      t.timestamps null: false
    end
    add_index :owners, :codeowner,                unique: true
  end
end
