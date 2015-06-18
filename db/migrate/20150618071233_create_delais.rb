class CreateDelais < ActiveRecord::Migration
  def change
    create_table :delais do |t|
      t.string :name
      t.text :description
      t.integer :nb_day

      t.timestamps null: false
    end
  end
end
