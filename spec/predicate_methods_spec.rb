=begin #quick refresher on predicate methods in Ruby
puts 0.zero?
puts 1.zero?

puts 2.even?
puts 3.even?

puts 11.odd?
puts 12.odd?

puts [].empty?
puts [0].empty?
=end

RSpec.describe 'predicate methods and predicate matchers' do
  it 'can be tested with Ruby methods' do
    result = 16 / 2
    expect(result.even?).to eq(true)
  end
  
  it 'can be tested with predicate matchers' do
    # imagine .even? to become be_even
    expect(16 / 2).to be_even
    expect(15).to be_odd
    expect(0).to be_zero
    expect([]).to be_empty
  end
  
  # subject example
  describe 0 do 
    it { is_expected.to be_zero }
  end
end