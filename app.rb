require('sinatra')
require('sinatra/reloader')
require('./lib/places')
also_reload('lib/**/*.rb')

get('/') do
  @places = Place.all_places
  erb(:index)
end

post('/index') do
  my_place = Place.new(params.fetch('title'))
  my_place.save
  erb(:index)
end
