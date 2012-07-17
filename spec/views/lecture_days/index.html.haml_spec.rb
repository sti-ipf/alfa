require 'spec_helper'

describe "lecture_days/index.html.haml" do
  before(:each) do
    assign(:lecture_days, [
      stub_model(LectureDay,
        :lecture_on => 1,
        :week_day => 1,
        :day => 1,
        :month => 1,
        :year => 1,
        :room => nil
      ),
      stub_model(LectureDay,
        :lecture_on => 1,
        :week_day => 1,
        :day => 1,
        :month => 1,
        :year => 1,
        :room => nil
      )
    ])
  end

  it "renders a list of lecture_days" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
