require 'rails_helper'

RSpec.describe "Boards", type: :request do
  let(:user) { create(:user) }
  before do
    sign_in user  # Sign in the user
  end
  
  describe "GET boards/index" do
    it "succeeds" do
      get new_board_path
      expect(response).to have_http_status(200)
    end
  end
end
