require 'spec_helper'

describe "phases/show.html.haml" do
  before(:each) do
    @phase = assign(:phase, stub_model(Phase,
      :name => "Name",
      :number => 1,
      :city => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
