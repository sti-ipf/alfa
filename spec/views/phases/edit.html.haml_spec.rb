require 'spec_helper'

describe "phases/edit.html.haml" do
  before(:each) do
    @phase = assign(:phase, stub_model(Phase,
      :name => "MyString",
      :number => 1,
      :city => nil
    ))
  end

  it "renders the edit phase form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => phases_path(@phase), :method => "post" do
      assert_select "input#phase_name", :name => "phase[name]"
      assert_select "input#phase_number", :name => "phase[number]"
      assert_select "input#phase_city", :name => "phase[city]"
    end
  end
end
