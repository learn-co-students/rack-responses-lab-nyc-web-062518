class Application
  def call(env)
    current_hour = DateTime.now.hour
    current_minute = DateTime.now.minute
    resp = Rack::Response.new
    if current_hour >12 && current_minute >=1
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end
end
