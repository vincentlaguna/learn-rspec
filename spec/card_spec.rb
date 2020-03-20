class Card
  
  attr_reader :rank, :suite
  
  def initialize(rank, suite)
    @rank = rank
    @suite = suite
  end
end

describe Card do
  it 'has a rank' do
    card = Card.new('Ace', 'Spades')
    expect(card.rank).to eq('Ace')
  end
  
  it 'has a suite' do
    card = Card.new('Ace', 'Spades')
    expect(card.suite).to eq('Spades')
  end
end