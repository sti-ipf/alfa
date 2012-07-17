require 'spec_helper'

describe "LectureDays" do
  describe "GET /lecture_days" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get lecture_days_path
      response.status.should be(200)
    end
  end
end
