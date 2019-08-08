require "rails_helper"

RSpec.describe WelcomeController, type: :controller do
  it "returns a 200 custom status code" do
    get :index
    expect(response).to have_http_status(200)
  end
end
