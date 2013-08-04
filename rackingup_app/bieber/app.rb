module Bieber
  class App

    def self.call(env)
      new.call(env)
    end

    def call(env)
      req = Rack::Request.new(env)
      res = Rack::Response.new
      ServletDispatcher.handle(req, res)
      res.finish
    end

  end
end