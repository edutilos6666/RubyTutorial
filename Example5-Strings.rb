# string
str1 = "foo"
str2 = String.new("bar")
puts str1
puts str2

temp = String.new(str1)
temp.concat(str2)
puts temp
temp = String.new(str1)
temp = temp + str2
puts temp
puts str1

temp = String.new(str1)
temp = temp * 3
puts temp


upcase = str1.upcase
downcase = upcase.downcase
capitalize = downcase.capitalize
puts upcase
puts downcase
puts capitalize

str1.each_char do |ch|
  puts ch
end

str1.each_byte do |ch|
  puts ch
end


#reverse
str = "edutilos"
reversed = str.reverse
puts str
puts reversed

str = "world"
str.insert(str.size, "!")
str.prepend("hello ")
puts str

chars = str.chars
chars.each  do |ch|
  puts ch
end

puts
bytes = str.bytes
bytes.each do |b|
  puts b
end

puts


str = "foo"
str << ", bar"
puts str