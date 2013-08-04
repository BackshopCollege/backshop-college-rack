#\ -p 3000 
#all options rackup --help

$: << "."
require 'backshop'

map "/ruby" do
  run lambda { |env| [ 200,  { "Content-Type" => "text/plain"} , ["Rack is really cool"]]}
end

map "/backshop" do 
  run Backshop.new
end

