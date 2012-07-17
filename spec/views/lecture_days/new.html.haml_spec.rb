require 'spec_helper'

describe "lecture_days/new.html.haml" do
  before(:each) do
    assign(:lecture_day, stub_model(LectureDay,
      :lecture_on => 1,
      :week_day => 1,
      :day => 1,
      :month => 1,
      :year => 1,
      :room => nil
    ).as_new_record)
  end

  it "renders new lecture_day form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lecture_days_path, :method => "post" do
      assert_select "input#lecture_day_lecture_on", :name => "lecture_day[lecture_on]"
      assert_select "input#lecture_day_week_day", :name => "lecture_day[week_day]"
      assert_select "input#lecture_day_day", :name => "lecture_day[day]"
      assert_select "input#lecture_day_month", :name => "lecture_day[month]"
      assert_select "input#lecture_day_year", :name => "lecture_day[year]"
      assert_select "input#lecture_day_room", :name => "lecture_day[room]"
    end
  end
end
