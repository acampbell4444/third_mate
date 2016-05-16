require 'rails_helper'

RSpec.describe ChutesController, type: :controller do

  describe "GET #parachute_selector" do
    it "returns http success" do
      get :parachute_selector
      expect(response).to have_http_status(:success)
    end
  end

end
