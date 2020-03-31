RSpec.describe 'satisfy matcher' do
  subject { 'racecar' }
  #subject { 'racecars' }
  
  it 'is a palindrome' do
    expect(subject).to satisfy { |value| value == value.reverse }
  end
  
  it 'can accept a custom failed assertion method' do
    expect(subject).to satisfy('to be a palindrome') do |value|
      value == value.reverse
    end
  end
end