require 'mongrel'
require 'pry'
require_relative '../app/app'


class MongrelRequestWrapper
  def initialize(request)
    @request =request
    @env = request.params
  end

  def path_info
    @env["REQUEST_PATH"]
  end
end

class BackshopMongrelHandler < Mongrel::HttpHandler
  
  def initialize
    @app = BackshopGreentingsApp.new
  end

  def process(request, response)
    status, content_type , body = @app.get(MongrelRequestWrapper.new(request))
    
    response.start(200) do |head, out|
      head["Content-Type"] = content_type
      out.write(body)
    end
  end

end

 h = Mongrel::HttpServer.new("0.0.0.0", "3000")
 h.register("/", BackshopMongrelHandler.new)
 h.run.join
