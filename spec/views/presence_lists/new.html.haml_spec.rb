require 'spec_helper'

describe "presence_lists/new.html.haml" do
  before(:each) do
    assign(:presence_list, stub_model(PresenceList,
      :room => nil
    ).as_new_record)
  end

  it "renders new presence_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => presence_lists_path, :method => "post" do
      assert_select "input#presence_list_room", :name => "presence_list[room]"
    end
  end
end
