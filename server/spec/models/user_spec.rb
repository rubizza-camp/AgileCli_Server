require "rails_helper"

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.new
  end

  it "should be valid" do
    @user.should be_valid
  end

  
end
