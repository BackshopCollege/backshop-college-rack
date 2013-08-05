
def get(path, &block)

  middleware = Class.new do
    
    def initialize(app)
      @app = app
    end

    def call(env)
      req = Rack::Request.new env
      res = Rack::Response.new

      if(req.request_method.downcase == 'get' && self.class.path == req.path_info)
        res.status = 200
        res["Content-Type"] =  "text/html"
        res.write(self.class.block.call)
        res.finish
      else
        @app.call(env)
      end
    end

    def self.path=(val)
      @path = val
    end

    def self.path
      @path
    end

    def self.block=(val)
      @block = val
    end

    def self.block
      @block
    end

  end

  middleware.block = block
  middleware.path = path
  use middleware

end