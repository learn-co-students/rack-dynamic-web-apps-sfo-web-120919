class Application

  def call(env)
    resp = Rack::Response.new
    value1 = Kernel.rand(0, 2)
    value2 = Kernel.rand(0, 2)
    resp.write "Hello, World"
    if value1 == value2
       resp.write "You Win"
    else 
      resp.write "You Lose"
    end 
    resp.finish
  end

end
