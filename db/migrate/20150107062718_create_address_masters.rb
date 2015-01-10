class CreateAddressMasters < ActiveRecord::Migration
  def change
    create_table :address_masters do |t|
      t.string :local_gov_cd
      t.string :zip5
      t.string :zip7
      t.string :pref_kana
      t.string :city_kana
      t.string :town_kana
      t.string :pref
      t.string :city
      t.string :town
      t.string :flg1
      t.string :flg2
      t.string :flg3
      t.string :flg4
      t.string :flg5
      t.string :flg6

      t.timestamps null: false
    end
  end
end
