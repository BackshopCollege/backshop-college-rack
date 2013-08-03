require 'mongrel'

 class Backshop < Mongrel::HttpHandler
    
    def process(request, response)
      response.start(200) do |head, out|
        head["Content-Type"] = "text/plain"
        out.write("'Hello, backshop by linkedcare!'")
      end
    end
    
 end

 h = Mongrel::HttpServer.new("0.0.0.0", "3000")
 h.register("/backshop", Backshop.new)
 h.run.join
