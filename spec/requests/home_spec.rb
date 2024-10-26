require 'rails_helper'

RSpec.describe "Homes", type: :request do
  describe "GET /index" do
    it "succeeds" do
      get root_path
      expect(response).to have_http_status(200)
    end
    # pending "add some examples (or delete) #{__FILE__}"
  end
end
