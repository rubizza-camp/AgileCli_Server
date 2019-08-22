require "rails_helper"

RSpec.describe ManifestoController, type: :controller do
  describe "GET #agile" do
    it "returns http success" do
      get :agile
      expect(response).to have_http_status(:success)
    end
  end
end
