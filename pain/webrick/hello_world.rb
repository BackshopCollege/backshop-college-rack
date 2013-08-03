require 'webrick'

class Backshop < WEBrick::HTTPServlet::AbstractServlet
  
  def do_GET(request, response)
    response.status = 200
    response['Content-Type'] = 'text/plain'
    response.body = 'Hello, backshop by linkedcare!'
  end

end

server = WEBrick::HTTPServer.new :Port => 3000
trap 'INT' do server.shutdown end
server.mount '/backshop', Backshop
server.start