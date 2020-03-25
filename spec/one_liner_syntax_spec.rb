RSpec.describe 'shorthand syntax' do
  subject { 5 }
  
  context 'with classic syntax' do
    it 'should equal 5' do
      expect(subject).to eq(5)
    end
  end
    
    context 'with one-liner syntax' do
      it { is_expected.to eq(5)  }
  end
end

RSpec.describe 'check array' do
  subject { [1, 2,] }
  
  it 'should return an array of 1, 2' do
    expect(subject).to eq([1, 2])
  end
  
  context 'should return an array of 1, 2' do
    it { is_expected.to eq([1, 2]) }
  end
end