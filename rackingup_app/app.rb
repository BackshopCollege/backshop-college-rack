class App
  def self.call(env)
    new.call(env)
  end

  def call(env)
    res = Rack::Response.new
    res['Content-Type'] = 'text/plain'
    res.write "My App Framework is Rocking :) BAM !!!"
    res.finish
  end
end