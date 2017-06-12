name = "foo"
puts name


# multiline string
name = <<"EOF"
hello world 
how are you?
today?
EOF


puts name

BEGIN {
  puts "Begin"
}


END {
  puts "End"
}

# single line comment
=begin
multi
line
comment
=end

name = "pako"
puts "name = #{name}"
puts "name = "+ name

# class example
class Worker
   def initialize(id, name, age, wage)
     @id = id
     @name = name
     @age = age
     @wage = wage
   end

  def setId(id)
     @id = id
  end

  def setName(name)
    @name = name
  end

  def setAge(age)
    @age = age
  end

  def setWage(wage)
    @wage = wage
  end

  def getId()
    return @id
  end

  def getName()
    return @name
  end

  def getAge()
    return @age
  end

  def getWage()
    return @wage
  end

  def printProps()
    msg , nl = "", "\n"
    msg = <<EOF
id = #@id 
name = #@name 
age = #@age 
wage = #@wage
EOF

    puts msg
  end
end



w1 = Worker.new(1, "foo", 10, 100.0)
w2 = Worker.new(2 , "bar", 20 , 200.0)
puts "<<RubyWorker 1 details>>"
puts "id = #{w1.getId}"
puts "name = #{w1.getName}"
puts "age = #{w1.getAge}"
puts "wage = #{w1.getWage}"


w2.setName("new_foo")
puts "w2 name after update = #{w2.getName}"

w2.printProps

# constant
PI = 3.14
puts PI


# array
puts "<<Printing array>>"
arr  = [1, "foo", 10 , 100.0 , true]
arr.each do |el|
  puts el
end


# hash
people = {"foo"=> 10, "bar"=> 20 , "bim"=> 30}
people.each do |k,v|
  puts "#{k} => #{v}"
end


# range (semi-closed)
(10...15).each do |el|
  print el , " "
end
puts

# range (fully closed)
(10..15).each do |el|
  print el, " "
end
puts




