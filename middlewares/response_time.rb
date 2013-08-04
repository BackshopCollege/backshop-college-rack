require 'date'

class ResponseTime
  def initialize(app)
    @app = app
  end

  def call(env)
    timer do 
      @app.call(env)
    end
  end

  private
  def timer(&block)
    start = Time.now
    status, header, body = yield
    header["X-Response"] = ( (Time.now - start).to_f ).to_s
    [status, header, body] 
  end
end