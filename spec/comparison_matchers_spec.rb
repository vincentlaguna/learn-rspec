RSpec.describe 'comparison matchers' do
  let(:a) { 10 }
  
  it 'allows for comparison with built-in Ruby operators' do
    expect(a).to be > 5
    expect(a).to be < 20
    
    expect(a).to be >= 9
    expect(a).to be >= -1
    
    expect(a).to be <= 20
    expect(a).to be <= 15
  end
  
  describe 100 do #object passed as subject; same as subject { 100 }
    it { is_expected.to be > 90 }
    it { is_expected.to be >= 100 }
    it { is_expected.to be < 500 }
    it { is_expected.to be 100 }
    it { is_expected.not_to be 101 }
  end  
end