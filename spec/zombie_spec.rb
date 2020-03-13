require_relative '../lib/zombie.rb'

describe Zombie do
  it "is named Ash" do
    zombie = Zombie.new
    zombie.name.should == 'Ash'
    zombie.brains.should be < 1
  end
  
  it "is hungry" do
    zombie = Zombie.new
    zombie.should be_hungry #predicate matcher on boolean hungry?
  end
end