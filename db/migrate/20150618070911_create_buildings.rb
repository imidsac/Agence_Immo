class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.references :owner, index: true, foreign_key: true
      t.string :name
      t.string :street
      t.string :door
      t.string :quartier
      t.string :ville

      t.timestamps null: false
    end
  end
end
