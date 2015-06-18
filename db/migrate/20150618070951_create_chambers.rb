class CreateChambers < ActiveRecord::Migration
  def change
    create_table :chambers do |t|
      t.references :building, index: true, foreign_key: true
      t.string :name
      t.string :type_chamber

      t.timestamps null: false
    end
  end
end
