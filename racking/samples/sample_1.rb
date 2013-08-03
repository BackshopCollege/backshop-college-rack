# Your RACK App should return HTML PAGE with your name and current time.
# The web server should be thin

require 'date'

class Sample1App
  def initialize(name)
    @name = name
  end

  def call(env)
    [200, {"Content-Type" => "text/html"}, ["<html><body><p>#{@name}</p><br><p>#{DateTime.now.to_s}</p></body></html>"] ]
  end

end
