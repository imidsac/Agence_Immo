class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :first_name
      t.string :first_name
      t.string :gender
      t.date :date_nai
      t.string :lieu_nai
      t.string :nationality
      t.string :phone
      t.string :email
      t.text :address
      t.string :post

      t.timestamps null: false
    end
  end
end
