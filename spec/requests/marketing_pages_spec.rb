require 'rails_helper'

RSpec.describe "MarketingPages", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/marketing_pages/show"
      expect(response).to have_http_status(:success)
    end
  end

end
