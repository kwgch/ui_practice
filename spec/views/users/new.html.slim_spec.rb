require 'rails_helper'

RSpec.describe "users/new", :type => :view do
  before(:each) do
    assign(:user, User.new(
      :name => "MyString",
      :sex => "MyString",
      :zipcode => "MyString",
      :pref => "MyString",
      :city => "MyString",
      :address => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_sex_1[name=?]", "user[sex]"

      assert_select "input#user_zipcode[name=?]", "user[zipcode]"

      assert_select "select#user_pref[name=?]", "user[pref]"

      assert_select "select#user_city[name=?]", "user[city]"

      assert_select "input#user_address[name=?]", "user[address]"
    end
  end
end
