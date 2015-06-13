class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :nom
      t.string :prenom
      t.string :phone
      t.text :address
      t.string :email

      t.timestamps null: false
    end
  end
end
