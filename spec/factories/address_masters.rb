FactoryGirl.define do

  trait :tokyo do
    pref_kana "ﾄｳｷｮｳﾄ"
    pref "東京都"
  end

  trait :chiba do
    pref_kana "ﾁﾊﾞｹﾝ"
    pref "千葉県"
  end

  trait :shinjuku do
    city_kana "ｼﾝｼﾞｭｸｸ"
    city "新宿区"
  end

  trait :shibuya do
    city_kana "ｼﾌﾞﾔｸ"
    city "渋谷区"
  end

  trait :kisarazu do
    city_kana "ｷｻﾗﾂﾞｼ"
    city "木更津市"
  end

  factory :address_master1, class: AddressMaster, traits: [:tokyo, :shinjuku] do
    local_gov_cd "13104"
    zip5 "161  "
    zip7 "1610033"
    town_kana "ﾅｶｲ"
    town "下落合"
  end

  factory :address_master2, class: AddressMaster, traits: [:tokyo, :shinjuku] do
    local_gov_cd "13104"
    zip5 "161  "
    zip7 "1610033"
    town_kana "ｼﾓｵﾁｱｲ"
    town "中井"
  end

  factory :address_master3, class: AddressMaster, traits: [:tokyo, :shibuya] do
    local_gov_cd "13113"
    zip5 "151  "
    zip7 "1510051"
    town_kana "ｾﾝﾀﾞｶﾞﾔ"
    town "千駄ヶ谷"
  end

  factory :address_master4, class: AddressMaster, traits: [:tokyo, :shibuya] do
    local_gov_cd "13113"
    zip5 "150  "
    zip7 "1500034"
    town_kana "ﾀﾞｲｶﾝﾔﾏﾁｮｳ"
    town "代官山町"
  end

  factory :address_master5, class: AddressMaster, traits: [:chiba, :kisarazu] do
    local_gov_cd "12206"
    zip5 "292  "
    zip7 "2920065"
    town_kana "ｱﾂﾞﾏ"
    town "吾妻"
  end

  factory :address_master6, class: AddressMaster, traits: [:chiba, :kisarazu] do
    local_gov_cd "12206"
    zip5 "292  "
    zip7 "2920066"
    town_kana "ｼﾝｼﾞｭｸ"
    town "新宿"
  end
end
