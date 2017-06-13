def func1
  i = 0
  while i < 2
     puts "func1 at #{Time.now.localtime}"
     sleep(2)
     i += 1
  end
end


def func2
  i = 0
  while i < 2
    puts "func2 at #{Time.now.localtime}"
    sleep(1)
    i += 1
  end
end


puts "Starting thread at #{Time.now.localtime}"
t1 = Thread.new{func1}
t2 = Thread.new{func2}
t1.join
t2.join

puts "End at #{Time.now.localtime}"