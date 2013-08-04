#\ -p 3000 -s thin 

$: << "."

require 'app'

use Rack::ShowExceptions
use Rack::Reloader

run App