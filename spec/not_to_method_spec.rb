RSpec.describe 'not_to method' do
  it 'checks that two values do not match' do
    expect(0).not_to eq(5)
    expect('Hello').not_to eq('hello')
    expect([1, 2]).not_to eq([1, 2, 3])
  end
end