class CreateCategoriedeps < ActiveRecord::Migration
  def change
    create_table :categoriedeps do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
