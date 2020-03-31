class HotChocolate
  
  def drink
    'Delicious'
  end
  
  def discard
    'PLOP!'
  end
  
  def purchase(number)
    "Awesome just purchased #{number} more hot chocolate beverages!"
  end
end

class Coffee
  def drink; end
  def discard; end
  def purchase(number); end
end

# Polymorphism (many shaped), notice it doesnt matter the class because 
# both will return instances that are constructed in the same fashion 
# returning the same values

RSpec.describe HotChocolate do
  it 'confirms that an object can respond to a method' do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:drink, :discard)
    expect(subject).to respond_to(:drink, :discard, :purchase)
  end
  
  it 'confirms that an object can respond to a method with arguments' do
    expect(subject).to respond_to(:purchase).with(1).arguments
  end
  
  it { is_expected.to respond_to(:purchase, :discard) }
  it { is_expected.to respond_to(:purchase).with(1).arguments }
end