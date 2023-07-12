require "socket"

def parse_http_request(request_line)
  http_method, path_with_params, http = request_line.split
  path, params = path_with_params.split("?")
  
  params = params.split("&").each_with_object({}) do |string, hash|
    key, value = string.split("=")
    hash[key] = value
  end

  [http_method, path, params]
end

server = TCPServer.new("localhost", 3003)
loop do
  client = server.accept
  
  request_line = client.gets
  next if !request_line || request_line =~ /favicon/
  puts request_line

  http_method, path, params = parse_http_request(request_line)

  client.puts "HTTP/1.1 200 OK"
  client.puts "Content-Type: text/html"
  client.puts
  client.puts "<html>"
  client.puts "<body>"
  client.puts "<pre>"
  client.puts http_method
  client.puts path
  client.puts params
  client.puts "</pre>"

  client.puts "<h1>Rolls!</h1>"
  params["rolls"].to_i.times do
    client.puts "<p>", rand(params["sides"].to_i) + 1, "</p>"
  end

  client.puts "</body>"
  client.puts "</html>"
  
  client.close
end


