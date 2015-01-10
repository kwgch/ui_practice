class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :sex
      t.string :zipcode
      t.string :pref
      t.string :city
      t.string :address

      t.timestamps null: false
    end
  end
end
