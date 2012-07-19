require 'spec_helper'

describe "presences/index.html.haml" do
  before(:each) do
    assign(:presences, [
      stub_model(Presence,
        :lecture_day => nil,
        :student => nil,
        :room => nil,
        :presence => false
      ),
      stub_model(Presence,
        :lecture_day => nil,
        :student => nil,
        :room => nil,
        :presence => false
      )
    ])
  end

  it "renders a list of presences" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
