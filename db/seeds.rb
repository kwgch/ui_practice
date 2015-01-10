require "csv"

arr = []

CSV.foreach('db/KEN_ALL.CSV') do |row|
  arr << AddressMaster.new(
    local_gov_cd: row[0],
    zip5: row[1],
    zip7: row[2],
    pref_kana: row[3],
    city_kana: row[4],
    town_kana: row[5],
    pref: row[6],
    city: row[7],
    town: row[8],
    flg1: row[9],
    flg2: row[10],
    flg3: row[11],
    flg4: row[12],
    flg5: row[13],
    flg6: row[14])
end

AddressMaster.import arr