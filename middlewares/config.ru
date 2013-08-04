$: << "."
require 'response_time'

use ResponseTime
run lambda { |env|  sleep 0.1; [200, {"Content-Type" => "text/html"}, ["Oww Yeah DAM"] ] }