require 'spec_helper'

describe "presence_lists/show.html.haml" do
  before(:each) do
    @presence_list = assign(:presence_list, stub_model(PresenceList,
      :room => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
