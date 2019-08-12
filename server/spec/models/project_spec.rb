require "rails_helper"

RSpec.describe Project, type: :model do
  before(:each) do
    @project = Project.new
  end

  it "should be valid" do
    @project.should be_valid
  end
end
