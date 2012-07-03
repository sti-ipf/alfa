require 'spec_helper'

describe "phases/index.html.haml" do
  before(:each) do
    assign(:phases, [
      stub_model(Phase,
        :name => "Name",
        :number => 1,
        :city => nil
      ),
      stub_model(Phase,
        :name => "Name",
        :number => 1,
        :city => nil
      )
    ])
  end

  it "renders a list of phases" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
