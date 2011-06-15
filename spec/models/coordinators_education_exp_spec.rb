require 'spec_helper'

describe CoordinatorsEducationExp do
  
  fixtures :cores, :coordinators, :coordinators_education_exps, :education_exps

  before(:each) do
    @coordinators_education_exp = coordinators_education_exps(:one)
  end
  
  it "update year and popular education years" do
    @coordinators_education_exp.update_with_years(10, 2)
    @coordinators_education_exp.years.should == 10
    @coordinators_education_exp.popular_education_years.should == 2
  end
end