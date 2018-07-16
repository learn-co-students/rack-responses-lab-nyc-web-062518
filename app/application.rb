class Application

  def call(env)
    resp = Rack::Response.new
    if Time.now.to_a[2] < 12
    	resp.write("Good Morning!")
    else
    	resp.write("Good Afternoon")
    end
    resp.finish
  end

end
