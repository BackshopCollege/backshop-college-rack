class Backshop
  def call(env)
    [200, {"Content-Type" => "text/html"}, ["<html><body>Backhop with rackup! YEAH</body></html>"]]
  end
end