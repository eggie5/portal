require 'rails_helper'

RSpec.describe "deposits/index", :type => :view do
  before(:each) do
    assign(:deposits, [
      Deposit.create!(
        :amount => 1,
        :to => "To",
        :from => "From",
        :user => nil
      ),
      Deposit.create!(
        :amount => 1,
        :to => "To",
        :from => "From",
        :user => nil
      )
    ])
  end

  it "renders a list of deposits" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "To".to_s, :count => 2
    assert_select "tr>td", :text => "From".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
