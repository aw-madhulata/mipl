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

  describe "POST boards/create" do
    context "with valid params" do 
      it "creates and redirects" do 
        expect do
          post boards_path, params: {
            board: {
              name: "Example"
            }
          } 
        end.to change {Board.count}.by(1)
        expect(response).to have_http_status(:redirect)
      end
    end
    
    context "with invalid params" do 
      it "does not create and renders new" do
        expect do
          post boards_path, params: {
            board: {
              name: ""
            }
          } 
        end.not_to change {Board.count}
        expect(response).to have_http_status(:success)
      end 
    end
  end

end
