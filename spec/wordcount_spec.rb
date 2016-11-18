require ('rspec')
require('pry')
require('word_count')

describe('String#word_count') do
  it('will recognize whether a word is repeated in 2 user inputs') do
    expect('cat'.word_count('cat')).to(eq(1))
  end
  it('will return the number of times an inputted word appears consistent with the number of times it is repeated in a multiple word phrase without counting words that contain the inputted word') do
    expect('the cat went to the cathedral to pick up cat food'.word_count('cat')).to(eq(2))
  end


end
