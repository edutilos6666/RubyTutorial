age = 10
# if
puts "hello world" if age == 10
puts "bye world" if age < 10 or age > 10



# unless
unless age != 10
  puts "hello world inside unless"
end


puts "hello world" unless age < 10 || age > 10
puts "bye world" unless age == 10


# case when stmt
case age
  when 0...10
    puts "your age is in [0, 10)"
  when 10...20
    puts "your age is in [10 , 20)"
  else
    puts "your age is >= 20"
end




# while loop
i = 0;  num = 10
while i < num
  puts "i = #{i}"
  i += 1
end


# begin ... end while
puts
i = 0
begin
  puts "i = #{i}"
  i += 1
end while i < num


# until
puts
i = 0
until i > num
  puts "i = #{i}"
  i += 1
end


# begin end until
puts
i = 0
begin
  puts "i = #{i}"
  i += 1
end until i > num



# for
puts
for i in 0...10
  puts "i = #{i}"
end

# .each
puts
(0..10).each do |i|
  puts "i = #{i}"
end