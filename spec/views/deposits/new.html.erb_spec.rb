require 'rails_helper'

RSpec.describe "deposits/new", :type => :view do
  before(:each) do
    assign(:deposit, Deposit.new(
      :amount => 1,
      :to => "MyString",
      :from => "MyString",
      :user => nil
    ))
  end

  it "renders new deposit form" do
    render

    assert_select "form[action=?][method=?]", deposits_path, "post" do

      assert_select "input#deposit_amount[name=?]", "deposit[amount]"

      assert_select "input#deposit_to[name=?]", "deposit[to]"

      assert_select "input#deposit_from[name=?]", "deposit[from]"

      assert_select "input#deposit_user_id[name=?]", "deposit[user_id]"
    end
  end
end
