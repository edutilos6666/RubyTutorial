#!/usr/bin/ruby

=begin
firstly in /opt/lampp/etc/httpd.conf , do followings :
<Directory "/opt/lampp/cgi-bin">
    AllowOverride None
#    Options None
   Options +ExecCGI
   Require all granted
   AddHandler cgi-script .rb
</Directory>



=end

# """... """ is not supported in ruby cgi => string is not executed , only content is printed


class CgiWorker
  attr_accessor :id , :name , :age , :wage
  def initialize(id , name , age , wage)
    @id , @name, @age, @wage = id , name, age, wage
  end

end


str = <<EOF
Content-type: text/html

<html>
<head>
</head>
<body>
<h3>People Table</h3>
<table>
<tr><td>Id</td><td>Name</td><td>Age</td><td>Wage</td></tr>
EOF


worker_list = [
    CgiWorker.new(1, "foo", 10 , 100.0),
    CgiWorker.new(2 , "bar", 20 , 200.0),
    CgiWorker.new(3, "bim", 30 , 300.0)
]


worker_list.each {|worker|
 temp = "<tr><td>#{worker.id}</td><td>#{worker.name}</td><td>#{worker.age}</td><td>#{worker.wage}</td></tr>"

  str += temp
}

str += "</table></body></html>"

puts str
