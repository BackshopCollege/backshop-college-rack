require_relative './test_helper'


module Rack
  module Test
    DEFAULT_HOST = "www.example.org"
  end
end

class Sample2AppTest < Test::Unit::TestCase
  include Rack::Test::Methods
   
  def app
    Sample2App
  end

  def test_returns_http_headers_for_backshop
    get "/backshop"
    assert_equal last_response.status, 200
    assert_equal last_response.body, "<html><body><br>GET /backshop<br>Host: www.example.org<br></body></html>"
  end

  def test_returns_http_headers_for_linkedcare
    get "/linkedcare"
    assert_equal last_response.status, 200
    assert_equal last_response.body, "<html><body><br>GET /linkedcare<br>Host: www.example.org<br></body></html>"
  end
end