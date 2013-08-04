#\ -p 3000 -s thin 

$: << "."

require 'bieber/bieber'
require 'backshop'

use Rack::ShowExceptions
use Rack::Reloader

run Bieber::App