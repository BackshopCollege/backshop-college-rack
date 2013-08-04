require 'pry'
module Bieber
  class Router
    
    def initialize(routes = {})
      @routes = routes
    end

    def self.configure(&block)
      configuration = new
      configuration.instance_eval(&block)
      @mappings = configuration
    end
    
    def self.mappings
      @mappings
    end

    def get(endpoint, action)
      @routes[endpoint] = action
    end

    def [](val)
      @routes[val]
    end

  end
end
