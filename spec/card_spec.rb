class Card
  
  attr_accessor :rank, :suite
  
  def initialize(rank, suite)
    @rank = rank
    @suite = suite
  end
end

describe Card do
    let (:card) { Card.new('Ace', 'Spades') }

  it 'has a rank' do
    expect(card.rank).to eq('Ace')
  end
  
  it 'has a suite' do
    expect(card.suite).to eq('Spades')
  end
end