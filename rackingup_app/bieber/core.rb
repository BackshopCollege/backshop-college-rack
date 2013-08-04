module Bieber
  
  class ServletDispatcher
    def initialize(req, res)
      @req = req
      @res = res
    end

    def dispatch
      @mappings = Bieber::Router.mappings
      controller, action = constantize(@mappings[@req.path_info])
      controller.new(@req, @res).process(action)
    end

    private
    def self.handle(req, res)
      new(req, res).dispatch
    end

    def constantize(mappings)
      controller, action= mappings.split("#") rescue [nil , nil]
      return [Bieber::NotFoundController, :to_404] if controller.nil?

      constant = ApplicationController.const_get(controller)
      [constant, action.to_sym]
    end

  end

  class ApplicationController

    def initialize(req, res)
      @req = req
      @res = res
      @status = 200
    end

    def process(action_name)
      body = send(action_name)
      @res.status = @status
      @res.write(body)
    end

    def status(code)
      @status = code
    end

    def header(name, value)
      @res[name] = value
    end

  end

  class NotFoundController < ApplicationController
    def to_404
      status 404
      " Page Not Found "
    end 
  end

end