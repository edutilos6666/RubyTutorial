def a
  raise "boom"
end

def b
  a()
end


begin
  b()
rescue => details
  print details.backtrace.join("\n")

ensure
  puts "That will be always executed."
end



begin
  10 / 0
rescue
  puts "DivisionByZero Exception"
ensure
  puts "Always"
end


begin
  file = open("non_existent_file.rb")
rescue
  file = STDIN
ensure
  puts "Always"
end

print STDIN , ", ", file, "\n"


#retry stmt
filename = "non_existent_file.rb"
begin
  file = open(filename)
rescue
  filename = "out1.txt"
  retry
end

print file.size , "\n"
file.close




class DivisionByZeroException < Exception
end

def divide(a, b)
  if b == 0
    raise DivisionByZeroException.new
  end
  return a / b
end


begin
  a , b = 10 , 0
  puts divide(a, b)
rescue DivisionByZeroException
  puts "Exception"
end


begin
  raise "hello world exception"
rescue Exception=> ex
  puts ex.message
  puts ex.backtrace.inspect
else
    puts "No errors"
ensure
  puts "Ensure block"
end
