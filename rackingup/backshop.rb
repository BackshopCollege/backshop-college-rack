class Backshop
  def call(env)
    [200, {"Content-Type" => "text/html"}, ["<html><body>Backshop with rackup</body></html>"]]
  end
end