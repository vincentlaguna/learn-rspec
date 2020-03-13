require_relative '../lib/racetrack.rb'

describe Racetrack do
  context 'when there are no racebikes' do
    let(:racetrack) { Racetrack.new(0) }
    
    it 'is quite a boring place' do
      mood = racetrack.mood
      expect(mood).to eq('boring')
    end
    
    it "is empty" do 
      expect(racetrack).to be_empty
    end
  end
end