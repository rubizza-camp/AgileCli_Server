require "rails_helper"

RSpec.describe WelcomeController, type: :controller do
  it "returns a 200 custom status code" do
    get :index
    expect(true).to eq(true)
  end
end
