require 'spec_helper'

describe "presences/edit.html.haml" do
  before(:each) do
    @presence = assign(:presence, stub_model(Presence,
      :lecture_day => nil,
      :student => nil,
      :room => nil,
      :presence => false
    ))
  end

  it "renders the edit presence form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => presences_path(@presence), :method => "post" do
      assert_select "input#presence_lecture_day", :name => "presence[lecture_day]"
      assert_select "input#presence_student", :name => "presence[student]"
      assert_select "input#presence_room", :name => "presence[room]"
      assert_select "input#presence_presence", :name => "presence[presence]"
    end
  end
end
