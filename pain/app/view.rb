module GreetingsView
  def render
    html = <<-EOS
      <html>
        <title>
          Rack Backshop
        </title>
        <body>
          <h1> Thanks for comming to our very first <strong> Backshop </strong> </h1>
          <br>
          <img src="https://dl.dropboxusercontent.com/u/15023320/mr_shop.png" alt="Smiley face" height="400" width="300">
        </body>
      </html>
    EOS
  end
  extend self
end