class Servlet

  def initialize(router)
    @router = router
  end

  def get(req)
    action = @router[req.path_info]
    return to_404 if action.nil?
    [ 200, "text/html",  dispatch(action)]
  end

  private
  def to_404
    [404, "text/plain" , "Page not found"]
  end

  def dispatch(action)
    send(action)
  end

end

