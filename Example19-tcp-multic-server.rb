require "socket"

port = 2000
server = TCPServer.open port
puts "Muliclient TCPServer is running on port #{port}"
loop {
  Thread.start(server.accept) do |client|
    client.puts Time.now.ctime
    client.puts Time.now.asctime
    client.puts Time.now.localtime
    client.puts Time.now.gmtime
    client.puts "Multiclient TCPServer connection is closing , bye!"
    client.close
  end
}

server.close