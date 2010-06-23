require 'spec_helper'
require 'bot'

describe Bot do
  
  before(:each) do
    @bot = Bot.new 1, 1, 1, 'N'
  end

  it 'should be on the 3D world' do
    @bot.x.should be 1
    @bot.y.should be 1
    @bot.z.should be 1
    @bot.direction.should == 'N'
  end

  it "should move forward" do
    @bot.forward
    @bot.x.should be 2
  end
  
  it 'should turn left' do
    @bot.turn_left
    @bot.direction.should == 'W'
  end
  
  it 'should turn right' do
    @bot.turn_right
    @bot.direction.should == 'E'
  end

end
