class Card
  
  attr_accessor :rank, :suite
  
  def initialize(rank, suite)
    @rank = rank
    @suite = suite
  end
end

describe Card do
    let (:card) { Card.new('Ace', 'Spades') }

  it 'has a rank that can change' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end
  
  it 'has a suite' do
    expect(card.suite).to eq('Spades')
  end
  
  it 'has a custom error message' do
    card.suite = 'nonsense'
    comparison = 'Spade'
    expect(card.suite).to eq(comparison), "Hey, I expected #{comparison}
     but I got #{card.suite} instead!"
  end
end