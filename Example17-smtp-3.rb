# sending html content
require "net/smtp"


username = "REMOVED@gmail.com"
password = "REMOVED"
from = username
to = "REMOVED@inbox.ru"

gmail_server = "smtp.gmail.com"
gmail_port = 587
helo = "gmail.com"

msg = <<EOF
From: #{from}
To: #{to}
Subject: Sending html content 
Content-Type: text/html 

<h1>Heading1</h1>
<h2>Heading2</h2>
<h3>Heading3</h3>
<h4>Heading4</h4>
<h5>Heading5</h5>
<h6>Heading6</h6>
EOF

begin
  smtp = Net::SMTP.new gmail_server, gmail_port
  smtp.enable_starttls
  smtp.start helo , username , password , :plain do
    smtp.sendmail msg , from , to
  end
rescue Exception => ex
   puts ex
else
  puts "Sent html message!"
end