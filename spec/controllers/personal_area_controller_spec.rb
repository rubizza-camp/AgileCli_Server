require 'rails_helper'

RSpec.describe PersonalAreaController, type: :controller do

  describe "GET #cabinet" do
    it "returns http success" do
      get :cabinet
      expect(response).to have_http_status(:success)
    end
  end

end
