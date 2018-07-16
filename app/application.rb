class Application

  def call(env)
    resp = Rack::Response.new

    time_hour = Time.now.hour

    if time_hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
