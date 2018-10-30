class Application
  
  def call(env)
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
    
    search_term = req.params["q"]
    
    if req.path.match(/items/)
  end 
  
end 
