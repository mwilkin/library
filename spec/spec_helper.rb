require('rspec')
require('books')
require('authors')
require('patrons')
require('pg')

DB = PG.connect({:dbname => 'library_test'})
