require 'spec_helper'

describe Core do

  it 'has periods' do
    Core.new.periods.should == []
  end

  it 'has phones' do
    Core.new.phones.should == []
  end

  it 'has educators' do
    Core.new.educators.should == []
  end

  it 'has coordinators' do
    Core.new.coordinators.should == []
  end

  it 'has partner_resources' do
    Core.new.partner_resources.should == []
  end

  it 'has seat_types' do
    Core.new.seat_types.should == []
  end

  it 'has desk_types' do
    Core.new.desk_types.should == []
  end

  it 'has displacements' do
    Core.new.displacements.should == []
  end

end

