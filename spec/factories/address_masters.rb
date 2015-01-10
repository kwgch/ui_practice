# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address_master do
    local_gov_cd "MyString"
    zip5 "MyString"
    zip7 "MyString"
    pref_kana "MyString"
    city_kana "MyString"
    town_kana "MyString"
    pref "MyString"
    city "MyString"
    town "MyString"
    flg1 "MyString"
    flg2 "MyString"
    flg3 "MyString"
    flg4 "MyString"
    flg5 "MyString"
    flg6 "MyString"
  end
end
