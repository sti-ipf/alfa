require 'spec_helper'

describe CoresDisplacement do

  fixtures :cores, :displacements, :cores_displacements

  before(:each) do
    @core_sao_paulo = cores(:sao_paulo)
  end

  it "create cores_displacements for core with descs empty" do
    CoresDisplacement.create_displacements(["9.0", "9.1"], @core_sao_paulo.id, "", "")
    @core_sao_paulo.cores_displacements.first.displacement_type.should == 0
    @core_sao_paulo.cores_displacements.first.displacement_desc.should == ""
    @core_sao_paulo.cores_displacements.first.displacement_id.should == 9
    @core_sao_paulo.cores_displacements.last.displacement_type.should == 1
    @core_sao_paulo.cores_displacements.last.displacement_desc.should == ""
    @core_sao_paulo.cores_displacements.last.displacement_id.should == 9
  end
  
  it "create cores_displacements for core with descs" do
    CoresDisplacement.create_displacements(["9.0", "9.1"], @core_sao_paulo.id, "carona", "metro")
    @core_sao_paulo.cores_displacements.first.displacement_type.should == 0
    @core_sao_paulo.cores_displacements.first.displacement_desc.should == "carona"
    @core_sao_paulo.cores_displacements.first.displacement_id.should == 9
    @core_sao_paulo.cores_displacements.last.displacement_type.should == 1
    @core_sao_paulo.cores_displacements.last.displacement_desc.should == "metro"
    @core_sao_paulo.cores_displacements.last.displacement_id.should == 9
  end
  
  it "dont create cores_displacements when array is nil" do
    CoresDisplacement.create_displacements(nil, @core_sao_paulo.id, "", "")
    @core_sao_paulo.cores_displacements.size.should == 0
  end
end