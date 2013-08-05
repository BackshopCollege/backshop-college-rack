$:<< "."

require 'sinatra/mimic'

get '/time' do 
  "Hello World -> #{Time.now}"
end

to_404 = proc do |env|
  
  req = Rack::Request.new(env) 
  res = Rack::Response.new

  body = <<-HTML
        <!DOCTYPE html>
        <html>
        <head>
          <style type="text/css">
          body { text-align:center;font-family:helvetica,arial;font-size:22px;
            color:#888;margin:20px}
          #c {margin:0 auto;width:500px;text-align:left}
          </style>
        </head>
        <body>
          <h2>Sinatra/Linkedcare doesn&rsquo;t know this ditty.</h2>
          <img src='https://raw.github.com/bmizerany/sinatra/work/lib/sinatra/images/404.png'>
          <img src='https://dl.dropboxusercontent.com/u/15023320/mr_shop.png' width=200 heigth= 300>
          <div id="c">
            Try this:
            <pre>#{req.request_method.downcase} '#{req.path_info}' do\n  "Hello World"\nend</pre>
          </div>
        </body>
        </html>
  HTML

  res.write body
  res.status = 404
  res["Content-Type"] = "text/html"
  res.finish

end

run to_404