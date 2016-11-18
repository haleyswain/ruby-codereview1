require ('rspec')
require('pry')
require('word_count')

describe('String#word_count') do
  it('will return the repeated word consistent with the number of times it is repeated') do
    expect('the cat went to the cat store to pick up cat food'.word_count('cat')).to(eq(3))
  end
end
