require 'spec_helper'

describe "occupations/new.html.haml" do
  before(:each) do
    assign(:occupation, stub_model(Occupation,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new occupation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => occupations_path, :method => "post" do
      assert_select "input#occupation_name", :name => "occupation[name]"
    end
  end
end
