require 'rails_helper'

RSpec.describe "Deposits", :type => :request do
  describe "GET /deposits" do
    it "works! (now write some real specs)" do
      get deposits_path
      expect(response.status).to be(200)
    end
  end
end
