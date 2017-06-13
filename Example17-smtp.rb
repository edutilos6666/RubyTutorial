require "net/smtp"


# enter your username, password , etc.
username = "REMOVED@gmail.com"
password = "REMOVED"
from = username
to = "REMOVED@inbox.ru"

msg = <<EOF
From: #{from}
To: #{to}
Subject: Test

Hello World from ruby smtp
EOF

gmail_server = "smtp.gmail.com"
gmail_port = 587

begin
smtp = Net::SMTP.new gmail_server , gmail_port
smtp.enable_starttls

smtp.start("gmail.com" , username, password , :plain) do
    smtp.send_message msg, from , to , "foobar666@inbox.ru", "edutilosaghayev@yahoo.com"
  end

rescue Exception=> ex
  puts ex
else
  puts "Sent message!"
end


