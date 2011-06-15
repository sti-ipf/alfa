require 'spec_helper'

describe EducatorsEducationExp do
  
  fixtures :cores, :educators, :educators_education_exps, :education_exps

  before(:each) do
    @educators_education_exp = educators_education_exps(:one)
  end
  
  it "update year and popular education years" do
    @educators_education_exp.update_with_years(10, 2)
    @educators_education_exp.years.should == 10
    @educators_education_exp.popular_education_years.should == 2
  end
end