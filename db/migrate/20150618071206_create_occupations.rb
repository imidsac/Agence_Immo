class CreateOccupations < ActiveRecord::Migration
  def change
    create_table :occupations do |t|
      t.references :client, index: true, foreign_key: true
      t.references :chamber, index: true, foreign_key: true
      t.date :date_occupation
      t.string :etat

      t.timestamps null: false
    end
  end
end
