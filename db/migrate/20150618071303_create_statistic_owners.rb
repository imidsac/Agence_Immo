class CreateStatisticOwners < ActiveRecord::Migration
  def change
    create_table :statistic_owners do |t|
      t.integer :year
      t.integer :month
      t.decimal :provide
      t.decimal :pay

      t.timestamps null: false
    end
  end
end
