require 'rails_helper'

RSpec.describe "users/index", :type => :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :name => "Name",
        :sex => "Sex",
        :zipcode => "Zipcode",
        :pref => "Pref",
        :city => "City",
        :address => "Address"
      ),
      User.create!(
        :name => "Name",
        :sex => "Sex",
        :zipcode => "Zipcode",
        :pref => "Pref",
        :city => "City",
        :address => "Address"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Sex".to_s, :count => 2
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
    assert_select "tr>td", :text => "Pref".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
