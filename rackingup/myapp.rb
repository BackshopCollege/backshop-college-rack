class MyApp
  def self.call(env)
    [ 200,  { "Content-Type" => "text/plain"} , ["Rack is really cool, isn't ? No ?"]]
  end
end