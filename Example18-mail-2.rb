require "rubygems"
require "mail"



# add your from , to , password
from = "REMOVED@gmail.com"
to = "REMOVED@inbox.ru"

gmail_server = "smtp.gmail.com"
gmail_port = 587
gmail_helo = "gmail.com"
username = from
password = "REMOVED"

smtp = {
    :address => gmail_server ,
    :domain => gmail_helo ,
    :port  => gmail_port ,
    :user_name => username,
    :password => password ,
    :enable_starttls_auto => true ,
    :openssl_verify_mode => "none"
}


Mail.defaults {delivery_method :smtp , smtp}


mail = Mail.new do
  from from
  to to
  subject "Multipart with plain and html content"

  text_part do
    body "Plain text"
  end

  html_part do
    content_type "text/html; charset=UTF-8"
    body "<h1>Hello World html content</h1>"
  end

  add_file "README.MD"
  add_file "temp1.txt"
end


begin
  mail.deliver!
rescue Exception=>ex
  puts ex
else
  puts "Message was sent!"
end