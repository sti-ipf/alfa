require 'spec_helper'

describe "world_readings/index.html.erb" do
  before(:each) do
    assign(:world_readings, [
      stub_model(WorldReading,
        :email => "Email",
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
        :about_internet_use_desc => "About Internet Use Desc",
        :internet_connection_type => 1,
        :what_you_do_in_internet => 1,
        :frequency_email_reading => 1,
        :make_searches => false,
        :prefered_search_engine => "Prefered Search Engine",
        :social_networking => 1,
        :social_networking_desc => "Social Networking Desc",
        :discussion_list => 1,
        :discussion_list_desc => "Discussion List Desc",
        :forum => 1,
        :forum_desc => "Forum Desc",
        :chat => false,
        :msn => false,
        :use_msn_with_frequency => false,
        :has_blog => false,
        :share_photos_videos => false,
        :e_learning => false,
        :e_learning_desc => "E Learning Desc",
        :educator => "",
        :coordinator => ""
      ),
      stub_model(WorldReading,
        :email => "Email",
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
        :about_internet_use_desc => "About Internet Use Desc",
        :internet_connection_type => 1,
        :what_you_do_in_internet => 1,
        :frequency_email_reading => 1,
        :make_searches => false,
        :prefered_search_engine => "Prefered Search Engine",
        :social_networking => 1,
        :social_networking_desc => "Social Networking Desc",
        :discussion_list => 1,
        :discussion_list_desc => "Discussion List Desc",
        :forum => 1,
        :forum_desc => "Forum Desc",
        :chat => false,
        :msn => false,
        :use_msn_with_frequency => false,
        :has_blog => false,
        :share_photos_videos => false,
        :e_learning => false,
        :e_learning_desc => "E Learning Desc",
        :educator => "",
        :coordinator => ""
      )
    ])
  end

  it "renders a list of world_readings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "About Internet Use Desc".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Prefered Search Engine".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Social Networking Desc".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Discussion List Desc".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Forum Desc".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "E Learning Desc".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
