require 'spec_helper'

describe "presence_lists/edit.html.haml" do
  before(:each) do
    @presence_list = assign(:presence_list, stub_model(PresenceList,
      :room => nil
    ))
  end

  it "renders the edit presence_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => presence_lists_path(@presence_list), :method => "post" do
      assert_select "input#presence_list_room", :name => "presence_list[room]"
    end
  end
end
