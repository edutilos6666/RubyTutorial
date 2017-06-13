require "socket"

port = 2000

server = TCPServer.open(port)
puts "TCPServer is running on port #{port}"
loop {
  client = server.accept
  client.puts Time.now.ctime
  client.puts Time.now.gmtime
  client.puts Time.now.asctime
  client.puts Time.now.localtime
  client.puts "Closing connection , bye!"
  client.close
}

