id, name , age , wage , active = 0 , 0, 0,0, 0
print "Enter your id: "
id = gets.to_i
print "Enter your name: "
name = gets.chomp
print "Enter your age: "
age = gets.to_i
print "Enter your wage: "
wage = gets.to_f
print "Enter , if you are active or not: "
active = gets.to_i

puts "[#{id}, #{name}, #{age}, #{wage}, #{active}]"

