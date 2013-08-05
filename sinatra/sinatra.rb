

TEMPLATE_404 <<-html
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
          <h2>Sinatra doesn&rsquo;t know this ditty.</h2>
          <img src='https://raw.github.com/bmizerany/sinatra/work/lib/sinatra/images/404.png'>
          <div id="c">
            Try this:
            <pre>#{request.request_method.downcase} '#{request.path_info}' do\n  "Hello World"\nend</pre>
          </div>
        </body>
        </html>
  html

run lambda { |env| [404, {"Content-Type" => "text/html"}, [TEMPLATE_404] ]}