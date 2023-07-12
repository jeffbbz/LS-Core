# class MyApp
#   def call(env)
#     body = "hello world"
#     ['200', { 'Content-Length' => body.size.to_s, "Content-Type" => "text/plain" }, body]
#   end
# end

# class FriendlyGreeting
#   def initialize(app)
#     @app = app
#   end

#   def call(env)
#     body = @app.call(env).last.prepend("A Warm Welcome to you!\n")
#     ['200', { 'Content-Length' => body.size.to_s, "Content-Type" => "text/plain" }, body]
#   end
# end

# class Wave
#   def initialize(app)
#     @app = app
#   end

#   def call(env)
#     body = @app.call(env).last.prepend("A wave form afar!\n")
#     ['200', { 'Content-Length' => body.size.to_s, "Content-Type" => "text/plain" }, [body]]
#   end
# end

class MyApp
  def call(env)
    ['200', { "Content-Type" => "text/plain" }, ["hello world"]]
  end
end

class FriendlyGreeting
  def initialize(app)
    @app = app
  end

  def call(env)
    body = @app.call(env).last
    ['200', { "Content-Type" => "text/plain" }, body.prepend("A Warm Welcome to you!")]
  end
end

class Wave
  def initialize(app)
    @app = app
  end

  def call(env)
    body = @app.call(env).last
    ['200', { "Content-Type" => "text/plain" }, body.prepend("Wave from afar!\n")]
  end
end