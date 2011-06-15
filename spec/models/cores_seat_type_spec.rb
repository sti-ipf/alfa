require 'spec_helper'

describe CoresSeatType do

  fixtures :cores, :seat_types, :cores_seat_types

  before(:each) do
    @core_sao_paulo = cores(:sao_paulo)
  end

  it "update cores_seat_type for core" do
    CoresSeatType.update_seat_type_desc("de plástico", @core_sao_paulo.id)
    @core_sao_paulo.cores_seat_types.first.seat_type_desc.should == "de plástico"
  end
  
end
