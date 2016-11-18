require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word count test path', {:type => :feature}) do
  it('processes the two user inputs, recognizes duplicates, and returns the number of times they are repeated') do
    visit('/')
    fill_in('phrase', :with => "the cat went to the cat store to get cat food")
    fill_in('word', :with => "cat")
    click_button('count my word!')
    expect(page).to have_content("3")
  end
end
