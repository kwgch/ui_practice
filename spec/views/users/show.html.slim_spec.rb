require 'rails_helper'

RSpec.describe "users/show", :type => :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "Name",
      :sex => "Sex",
      :zipcode => "Zipcode",
      :pref => "Pref",
      :city => "City",
      :address => "Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Sex/)
    expect(rendered).to match(/Zipcode/)
    expect(rendered).to match(/Pref/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Address/)
  end
end
