require 'spec_helper'

describe "students/new.html.erb" do
  before(:each) do
    assign(:student, stub_model(Student,
      :educator => nil,
      :core => nil,
      :room => nil,
      :name => "MyString",
      :age => 1,
      :gender => 1,
      :ethnicity => 1,
      :hometown => "MyString",
      :state => "MyString",
      :zone => 1,
      :address => "MyString",
      :civil_status => 1,
      :education_level => 1,
      :actual_condition => 1,
      :profession => "MyString"
    ).as_new_record)
  end

  it "renders new student form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => students_path, :method => "post" do
      assert_select "input#student_educator", :name => "student[educator]"
      assert_select "input#student_core", :name => "student[core]"
      assert_select "input#student_room", :name => "student[room]"
      assert_select "input#student_name", :name => "student[name]"
      assert_select "input#student_age", :name => "student[age]"
      assert_select "input#student_gender", :name => "student[gender]"
      assert_select "input#student_ethnicity", :name => "student[ethnicity]"
      assert_select "input#student_hometown", :name => "student[hometown]"
      assert_select "input#student_state", :name => "student[state]"
      assert_select "input#student_zone", :name => "student[zone]"
      assert_select "input#student_address", :name => "student[address]"
      assert_select "input#student_civil_status", :name => "student[civil_status]"
      assert_select "input#student_education_level", :name => "student[education_level]"
      assert_select "input#student_actual_condition", :name => "student[actual_condition]"
      assert_select "input#student_profession", :name => "student[profession]"
    end
  end
end
