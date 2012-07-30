require 'spec_helper'

describe "occupations/edit.html.haml" do
  before(:each) do
    @occupation = assign(:occupation, stub_model(Occupation,
      :name => "MyString"
    ))
  end

  it "renders the edit occupation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => occupations_path(@occupation), :method => "post" do
      assert_select "input#occupation_name", :name => "occupation[name]"
    end
  end
end
