require 'spec_helper'

describe SocialParticipation do
  
  fixtures :cores, :educators, :social_participations

  before(:each) do
    @social_participation = social_participations(:marcela_one)
  end
  
  it "update ong_desc and union_movement_desc" do
    @social_participation.save_with_descs("yz", "pyz")
    @social_participation.ong_desc.should == "yz"
    @social_participation.union_movement_desc.should ==" pyz"
  end
end
