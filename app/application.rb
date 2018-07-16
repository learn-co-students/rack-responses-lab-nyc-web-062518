class Application
  def call(env)
    current_hour = Time.now.hour
    resp = Rack::Response.new
    if current_hour >=12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end
end
