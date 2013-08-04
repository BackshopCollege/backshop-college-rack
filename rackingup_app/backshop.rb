require 'date'
# super amateur route
Bieber::Router.configure do 
  get "/time",     "Backshop#current_time"
  get "/backshop", "Backshop#greetings"

end

class Backshop < Bieber::ApplicationController

  def current_time
    DateTime.now.to_s
  end

  def greetings
    header "Content-Type", "text/html"
    "Hey everyone, be welcome to our BACKSHOP. DAM !!!"
  end

end