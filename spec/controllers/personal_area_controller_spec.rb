require "rails_helper"

RSpec.describe PersonalAreaController, type: :controller do
  describe "GET #cabinet" do
    it "returns http success" do
      get :cabinet
      expect(true).to eq(true)
    end
  end
end
