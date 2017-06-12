t1 = Time.new
t2 = Time.now

p t1
p t2

p t1.inspect
p t2.inspect



p t1.year
p t1.mon
p t1.day
p t1.wday
p t1.yday
p t1.hour
p t1.min
p t1.sec
p t1.usec
p t1.zone

p t1.to_a
p t1.to_s


p Time.local(2010 , 10 , 10)
p Time.local(2010 , 10 , 10 , 1, 2)
p Time.utc(2010 , 10 , 10)
p Time.utc(2010 , 10 , 10, 1, 2)
p Time.gm(2010, 10 , 10)
p Time.gm(2010 , 10, 10, 1,2)

puts
p Time.local(*t1.to_a)
p Time.utc(*t1.to_a)
p Time.gm(*t1.to_a)

puts
p t1.to_s
p t1.ctime
p t1.localtime
pattern = "%Y-%m-%d %H:%M:%S"
p t1.strftime(pattern)

puts
p t1.sunday?
p t1.monday?
p t1.tuesday?
p t1.wednesday?
p t1.thursday?
p t1.friday?
p t1.saturday?


# arithmetic
now = Time.now
past = now - 10  # - 10 second
future = now + 10 # # 10 second
puts
p now
p past
p future
p now - past
p future - now
p future - past