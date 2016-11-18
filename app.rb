require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @answer = params.fetch('phrase').word_count(params.fetch('word'))
  erb(:result)
end
