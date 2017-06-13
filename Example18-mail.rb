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
  subject "mail ruby with attachments"
  body "hello world from mail ruby"
  add_file "README.MD"
  add_file "temp1.txt"
end

mail.deliver!