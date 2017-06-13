require "net/smtp"


username = "REMOVED@gmail.com"
password = "REMOVED"
from = username
to = "REMOVED@inbox.ru"


marker = "UniqueMarker"

filecontent = File.read("README.MD")
encodedcontent = [filecontent].pack("m")  # base64

puts encodedcontent

body = <<EOF
This is simple body
EOF

part1 = <<EOF
From: #{from}
To: #{to}
Subject: Sending attachment
MIME-Version: 1.0 
Content-Type: multipart/mixed; boundary = #{marker}
--#{marker}
EOF


part2 = <<EOF
Content-Type: text/plain
Content-Transfer-Encoding: 8bit

#{body}
--#{marker}
EOF


part3 = <<EOF
Content-Type: multipart/mixed; name = "README.MD"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename = "README.MD"

#{encodedcontent}
--#{marker}
EOF


msg = part1 + part2 + part3
gmail_server = "smtp.gmail.com"
gmail_port = 587
helo = "gmail.com"

begin
  smtp = Net::SMTP.new gmail_server , gmail_port
  smtp.enable_starttls
  smtp.start helo , username, password, :plain do
    smtp.send_mail msg , from , to, "edutilosaghayev@yahoo.com"
  end

rescue Exception => ex
  puts ex
else
  puts "Sent multipart message!"
end

