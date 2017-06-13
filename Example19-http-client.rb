require "socket"

hostname = "www.google.com"
port = 80
path = "/index.html?gfe_rd=cr&amp;ei=NBZAWci3LtCZwAL6nITgDw"

NL = "\r\n"
request = "GET #{path} HTTP/1.0\r\n\r\n"
puts request
socket = TCPSocket.open(hostname, port)
socket.print(request)

response = socket.read
# puts response

headers , body = response.split NL+NL

puts "headers = #{headers}"
puts "body = #{body}"