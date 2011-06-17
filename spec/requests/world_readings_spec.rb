require 'spec_helper'

describe "WorldReadings" do
  describe "GET /world_readings" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get world_readings_path
      response.status.should be(200)
    end
  end
end
