require 'spec_helper'

describe Core do

  it 'has periods' do
    Core.new.periods.should equals []
  end

  it 'has phones' do
    Core.new.phones.should equals []
  end
end

