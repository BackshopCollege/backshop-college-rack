class App
  def self.call(env)
    new.call(env)
  end

  def call(env)
    req = Rack::Request.new env
    body = if req['name']
      "Welcome Mr. #{req['name']}"
    else
      'Anonymous'
    end
    [200, {}, [body]]
  end
end