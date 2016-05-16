require 'rails_helper'

RSpec.describe OperationsController, type: :controller do

  describe "GET #suggestions" do
    it "returns http success" do
      get :suggestions
      expect(response).to have_http_status(:success)
    end
  end

end
