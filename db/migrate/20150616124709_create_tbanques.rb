class CreateTbanques < ActiveRecord::Migration
  def change
    create_table :tbanques do |t|
      t.references :banque, index: true, foreign_key: true
      t.string :type_tb
      t.decimal :debit, default: 0
      t.decimal :credit, default: 0
      t.string :porteur

      t.timestamps null: false
    end
  end
end
