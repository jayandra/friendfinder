require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :name => "Name",
        :sex => false,
        :school => "School",
        :highschool => "Highschool",
        :city => "City",
        :photo => "Photo",
        :views => 1,
        :likes => 2
      ),
      User.create!(
        :name => "Name",
        :sex => false,
        :school => "School",
        :highschool => "Highschool",
        :city => "City",
        :photo => "Photo",
        :views => 1,
        :likes => 2
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "School".to_s, :count => 2
    assert_select "tr>td", :text => "Highschool".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
