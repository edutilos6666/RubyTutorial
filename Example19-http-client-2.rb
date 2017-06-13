require "net/http"

hostname = "www.google.com"
path = "/index.html?gfe_rd=cr&amp;ei=NBZAWci3LtCZwAL6nITgDw"

http = Net::HTTP.new hostname
headers , body = http.get path

if headers.code == "200"
  print body
end

puts "<<Headers>>"
headers.each {|k, v| puts "#{k} => #{v}"}
