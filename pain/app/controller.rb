require 'date'

class BackshopGreentingsApp < Servlet

  def initialize
    super({ '/backshop' => :greetings, '/now' => :now })
  end

  def greetings
    GreetingsView.render
  end


  def now
    DateTime.now.to_s
  end

end


