require 'spec_helper'

describe CoresPartnerResource do

  fixtures :cores, :partner_resources, :cores_partner_resources

  before(:each) do
    @core_sao_paulo = cores(:sao_paulo)
  end

  it "update cores_partner_resource for core" do
    CoresPartnerResource.update_resource_desc("lanches", @core_sao_paulo.id)
    @core_sao_paulo.cores_partner_resources.first.resource_desc.should == "lanches"
  end
  
end