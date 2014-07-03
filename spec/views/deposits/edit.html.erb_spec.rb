require 'rails_helper'

RSpec.describe "deposits/edit", :type => :view do
  before(:each) do
    @deposit = assign(:deposit, Deposit.create!(
      :amount => 1,
      :to => "MyString",
      :from => "MyString",
      :user => nil
    ))
  end

  it "renders the edit deposit form" do
    render

    assert_select "form[action=?][method=?]", deposit_path(@deposit), "post" do

      assert_select "input#deposit_amount[name=?]", "deposit[amount]"

      assert_select "input#deposit_to[name=?]", "deposit[to]"

      assert_select "input#deposit_from[name=?]", "deposit[from]"

      assert_select "input#deposit_user_id[name=?]", "deposit[user_id]"
    end
  end
end
