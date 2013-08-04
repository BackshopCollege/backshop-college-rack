# This is build by Rack Builder
# http://rack.rubyforge.org/doc/Rack/Builder.html

use Rack::ShowExceptions

map "/backshop" do 
  run lambda { |env| [200, { "Content-Type" => "text/html"} , ["This backshop is awesome ! BAM !" ] ] }
end

run lambda { |env| [200, {"Content-Type" => "text/html"}, [" OWW YEAH BAM BAM BAM"]]}
