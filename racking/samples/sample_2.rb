=begin 
 
 Your RACK App should return the HTTP HEADERS.
  for instance:
     when I hit the endpoint http://localhost:8000
     the browser should return one HTML PAGE with http headers
  
  $ curl http://localhost:8000
  <html>
    <body>
      
      GET / HTTP/1.1 <br>
      User-Agent: curl/7.24.0 (x86_64-apple-darwin12.0) libcurl/7.24.0 OpenSSL/0.9.8r zlib/1.2.5 <br>
      Host: localhost:8000 <br>
      Accept: */* <br>

     </body>
  </html>

=end
