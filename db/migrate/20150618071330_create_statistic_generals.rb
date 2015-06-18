class CreateStatisticGenerals < ActiveRecord::Migration
  def change
    create_table :statistic_generals do |t|
      t.integer :year
      t.integer :month
      t.decimal :expense
      t.decimal :recipe

      t.timestamps null: false
    end
  end
end
