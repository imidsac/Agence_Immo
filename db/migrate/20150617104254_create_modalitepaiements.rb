class CreateModalitepaiements < ActiveRecord::Migration
  def change
    create_table :modalitepaiements do |t|
      t.string :code
      t.string :mode
      t.string :description
      t.decimal :remise, default: 0

      t.timestamps null: false
    end
  end
end
