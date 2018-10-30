class Application
  
  def call(env)
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
    
    search_term = req.params["q"]
    
    if req.path.match(/items/"#{search_term}")
      resp.write ""
    else   
      resp.write "Route not found"
      resp.status = 404
  end 
  
end 
