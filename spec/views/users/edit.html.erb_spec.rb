require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "MyString",
      :sex => false,
      :school => "MyString",
      :highschool => "MyString",
      :city => "MyString",
      :photo => "MyString",
      :views => 1,
      :likes => 1
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_sex[name=?]", "user[sex]"

      assert_select "input#user_school[name=?]", "user[school]"

      assert_select "input#user_highschool[name=?]", "user[highschool]"

      assert_select "input#user_city[name=?]", "user[city]"

      assert_select "input#user_photo[name=?]", "user[photo]"

      assert_select "input#user_views[name=?]", "user[views]"

      assert_select "input#user_likes[name=?]", "user[likes]"
    end
  end
end
