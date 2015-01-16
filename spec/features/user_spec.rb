require 'rails_helper'

feature 'User pages' do
  before do
    6.times do |i|
      create("address_master#{i+1}".to_sym)
    end
    visit new_user_path
  end

  scenario '都道府県：東京都を選択すると、市区町村：新宿区 が含まれる', js: true do
    select '東京都', from: 'user[pref]'
    sleep 0.2
    expect(page).to have_field 'user[city]', with: '新宿区'
  end

  scenario '都道府県：千葉県を選択すると、市区町村：木更津市 が含まれる', js: true do
    select '千葉県', from: 'user[pref]'
    sleep 0.2
    expect(page).to have_field 'user[city]', with: '木更津市'
  end
end
