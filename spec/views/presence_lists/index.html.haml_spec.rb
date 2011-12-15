require 'spec_helper'

describe "presence_lists/index.html.haml" do
  before(:each) do
    assign(:presence_lists, [
      stub_model(PresenceList,
        :room => nil
      ),
      stub_model(PresenceList,
        :room => nil
      )
    ])
  end

  it "renders a list of presence_lists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
