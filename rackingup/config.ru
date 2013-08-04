#\ -p 3000 
#all options rackup --help

$: << "."
require 'backshop'
require 'myapp'

use Rack::Reloader

map "/ruby" do
  run MyApp
end

map "/backshop" do 
  run Backshop.new
end

