require 'rails_helper'

RSpec.describe TriplesController, type: :controller do

  describe "GET #tutor" do
    it "returns http success" do
      get :tutor
      expect(response).to have_http_status(:success)
    end
  end

end
