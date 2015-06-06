require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "Name",
      :sex => false,
      :school => "School",
      :highschool => "Highschool",
      :city => "City",
      :photo => "Photo",
      :views => 1,
      :likes => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/School/)
    expect(rendered).to match(/Highschool/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Photo/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
