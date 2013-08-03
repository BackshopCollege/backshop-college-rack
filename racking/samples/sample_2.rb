=begin 
 
 Your RACK App should return the HTTP HEADERS.
  for instance:
     when I hit the endpoint http://localhost:8000
     the browser should return one HTML PAGE with http headers
  
  $ curl http://localhost:8000
  <html>
    <body>
      GET / HTTP/1.1 <br>
      Host: localhost:8000 <br>
      Accept: */* <br>
     </body>
  </html>

=end


class Sample2App
  
  def self.call(env)
    path = env["PATH_INFO"]
    method = env["REQUEST_METHOD"]
    host = env["HTTP_HOST"]
    [ 200, { "Content-Type" => "text/html"}, ["<html><body><br>#{method} #{path}<br>Host: #{host}<br></body></html>"]]
  end

end