require 'rails_helper'

RSpec.describe "Boards", type: :request do
  describe "GET /index" do
    it "succeeds" do
      get new_board_path
      expect(response).to have_http_status(200)
    end
  end
end
