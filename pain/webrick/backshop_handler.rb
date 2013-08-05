require 'webrick'
require_relative '../app/app'

class BackshopHandler < WEBrick::HTTPServlet::AbstractServlet
  
  def initialize(server)
    super(server)
    @app = BackshopGreentingsApp.new
  end

  def service(request, response)
    status, content_type , body = @app.get(request)
    response.status = status
    response['Content-Type']  = content_type
    response.body = body
  end

end

server = WEBrick::HTTPServer.new :Port => 3000
trap 'INT' do server.shutdown end
server.mount '/', BackshopHandler
server.start
