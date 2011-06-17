require 'spec_helper'

describe "world_readings/new.html.erb" do
  before(:each) do
    assign(:world_reading, stub_model(WorldReading,
      :email => "MyString",
      :have_experience => "MyText",
      :availability => "MyText",
      :availability_to_travel => false,
      :need_for_literacy => "MyText",
      :can_organize_rooms => "MyText",
      :educator_wish => "MyText",
      :any_time => "MyText",
      :what_teach => "MyText",
      :young_and_old_together => "MyText",
      :list_subjects => "MyText",
      :computer_use => 1,
      :what_use => 1,
      :about_internet_use => 1,
      :about_internet_use_desc => "MyString",
      :internet_connection_type => 1,
      :what_you_do_in_internet => 1,
      :frequency_email_reading => 1,
      :make_searches => false,
      :prefered_search_engine => "MyString",
      :social_networking => 1,
      :social_networking_desc => "MyString",
      :discussion_list => 1,
      :discussion_list_desc => "MyString",
      :forum => 1,
      :forum_desc => "MyString",
      :chat => false,
      :msn => false,
      :use_msn_with_frequency => false,
      :has_blog => false,
      :share_photos_videos => false,
      :e_learning => false,
      :e_learning_desc => "MyString",
      :educator => "",
      :coordinator => ""
    ).as_new_record)
  end

  it "renders new world_reading form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => world_readings_path, :method => "post" do
      assert_select "input#world_reading_email", :name => "world_reading[email]"
      assert_select "textarea#world_reading_have_experience", :name => "world_reading[have_experience]"
      assert_select "textarea#world_reading_availability", :name => "world_reading[availability]"
      assert_select "input#world_reading_availability_to_travel", :name => "world_reading[availability_to_travel]"
      assert_select "textarea#world_reading_need_for_literacy", :name => "world_reading[need_for_literacy]"
      assert_select "textarea#world_reading_can_organize_rooms", :name => "world_reading[can_organize_rooms]"
      assert_select "textarea#world_reading_educator_wish", :name => "world_reading[educator_wish]"
      assert_select "textarea#world_reading_any_time", :name => "world_reading[any_time]"
      assert_select "textarea#world_reading_what_teach", :name => "world_reading[what_teach]"
      assert_select "textarea#world_reading_young_and_old_together", :name => "world_reading[young_and_old_together]"
      assert_select "textarea#world_reading_list_subjects", :name => "world_reading[list_subjects]"
      assert_select "input#world_reading_computer_use", :name => "world_reading[computer_use]"
      assert_select "input#world_reading_what_use", :name => "world_reading[what_use]"
      assert_select "input#world_reading_about_internet_use", :name => "world_reading[about_internet_use]"
      assert_select "input#world_reading_about_internet_use_desc", :name => "world_reading[about_internet_use_desc]"
      assert_select "input#world_reading_internet_connection_type", :name => "world_reading[internet_connection_type]"
      assert_select "input#world_reading_what_you_do_in_internet", :name => "world_reading[what_you_do_in_internet]"
      assert_select "input#world_reading_frequency_email_reading", :name => "world_reading[frequency_email_reading]"
      assert_select "input#world_reading_make_searches", :name => "world_reading[make_searches]"
      assert_select "input#world_reading_prefered_search_engine", :name => "world_reading[prefered_search_engine]"
      assert_select "input#world_reading_social_networking", :name => "world_reading[social_networking]"
      assert_select "input#world_reading_social_networking_desc", :name => "world_reading[social_networking_desc]"
      assert_select "input#world_reading_discussion_list", :name => "world_reading[discussion_list]"
      assert_select "input#world_reading_discussion_list_desc", :name => "world_reading[discussion_list_desc]"
      assert_select "input#world_reading_forum", :name => "world_reading[forum]"
      assert_select "input#world_reading_forum_desc", :name => "world_reading[forum_desc]"
      assert_select "input#world_reading_chat", :name => "world_reading[chat]"
      assert_select "input#world_reading_msn", :name => "world_reading[msn]"
      assert_select "input#world_reading_use_msn_with_frequency", :name => "world_reading[use_msn_with_frequency]"
      assert_select "input#world_reading_has_blog", :name => "world_reading[has_blog]"
      assert_select "input#world_reading_share_photos_videos", :name => "world_reading[share_photos_videos]"
      assert_select "input#world_reading_e_learning", :name => "world_reading[e_learning]"
      assert_select "input#world_reading_e_learning_desc", :name => "world_reading[e_learning_desc]"
      assert_select "input#world_reading_educator", :name => "world_reading[educator]"
      assert_select "input#world_reading_coordinator", :name => "world_reading[coordinator]"
    end
  end
end
