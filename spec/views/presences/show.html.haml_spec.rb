require 'spec_helper'

describe "presences/show.html.haml" do
  before(:each) do
    @presence = assign(:presence, stub_model(Presence,
      :lecture_day => nil,
      :student => nil,
      :room => nil,
      :presence => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
