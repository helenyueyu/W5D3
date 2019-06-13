# require 'rack'

# class MyController
    
#   def initialize(req, res)
#     @req = req 
#     @res = res 
#   end

#   def execute
#     if @req.path == "/i/love/app/academy" # .path is a method from the Request class
#         @res.write("/i/love/app/academy")
#     else  
#         @res.write("Hello")
#     end
#   end
# end

# app = Proc.new do |env|
#   req = Rack::Request.new(env)
#   res = Rack::Response.new
  
#   c = MyController.new(req, res)
#   c.execute

#   res.finish
# end

# Rack::Server.start({
#     app: app,
#     Port: 3000
# })