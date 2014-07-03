require 'rails_helper'

RSpec.describe "deposits/show", :type => :view do
  before(:each) do
    @deposit = assign(:deposit, Deposit.create!(
      :amount => 1,
      :to => "To",
      :from => "From",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/To/)
    expect(rendered).to match(/From/)
    expect(rendered).to match(//)
  end
end
