#\ -p 3000 
#all options rackup --help

$: << "."
require 'backshop'
require 'myapp'

app_ruby = Rack::Reloader.new(MyApp)
app_backshop = Rack::Reloader.new(Backshop.new)

map "/ruby" do
  run app_ruby
end

map "/backshop" do 
  run app_backshop
end

