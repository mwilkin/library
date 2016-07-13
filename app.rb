require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/books')
require('./lib/authors')
require('./lib/patrons')
require('pry')
require('launchy')
require('pg')

DB = PG.connect({:dbname => 'library_test'})


get('/') do

  erb(:index)
end
