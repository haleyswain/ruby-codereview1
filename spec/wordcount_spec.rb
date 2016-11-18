require ('rspec')
require('word_count')

describe('String#word_count') do
  it('will find the inputted word in the inputted sentence and count how many times it is repeated between the two') do
    expect('the cat went to the cat store to pick up cat food').word_count('cat').to(eq(3))
  end
end
