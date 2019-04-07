require './lib/scrabble.rb'

describe 'Scrabble solver' do

  it 'returns a score of when passed an empty string as input' do
    scrabble = Scrabble.new('')
    expect(scrabble.score).to eq(0)
  end

  it 'returns a score of 0 when passed " \t\n" as input' do
    scrabble = Scrabble.new(" \t\n")
    expect(scrabble.score).to eq(0)
  end

  it 'returns a score of 0 when passed nil as input' do
    scrabble = Scrabble.new(nil)
    expect(scrabble.score).to eq(0)
  end

  it 'returns a score of 1 when passed "a" as input' do
    scrabble = Scrabble.new('a')
    expect(scrabble.score).to eq(1)
  end

  it 'returns a score of 4 when passed "f" as input' do
    scrabble = Scrabble.new('f')
    expect(scrabble.score).to eq(4)
  end

  it 'returns a score of 6 when passed "street" as input' do
    scrabble = Scrabble.new('street')
    expect(scrabble.score).to eq(6)
  end

  it 'returns a score of 22 when passed "quirky" as input' do
    scrabble = Scrabble.new('quirky')
    expect(scrabble.score).to eq(22)
  end

  it 'returns a score of 22 when passed "quirky" as input' do
    scrabble = Scrabble.new('OXYPHENBUTAZONE')
    expect(scrabble.score).to eq(41)
  end

end
