def add(x , y)
  return x + y
end

def subtract(x , y)
  return x - y
end

def multiply(x, y)
  return x * y
end

def divide(x , y)
  return x / y
end

x = 10
y = 3
_sum = add(x, y)
_sub = subtract(x, y)
_multiply = multiply(x, y)
_divide = divide(x, y)

puts "sum = #{_sum}"
puts "sub = #{_sub}"
puts "multiply = #{_multiply}"
puts "divide = #{_divide}"


class SimpleMath
  def initialize(x, y)
    @x = x
    @y = y
  end

  def add()
    return @x + @y
  end

  def subtract()
    return @x - @y
  end

  def multiply()
    return @x * @y
  end

  def divide()
    return @x / @y
  end
end



sm = SimpleMath.new(x, y)
puts "add = #{sm.add}"
puts "subtract = #{sm.subtract}"
puts "multiply = #{sm.multiply}"
puts "divide = #{sm.divide}"




# Arithmetic operators : + - * / % **
class ArithmeticOps
  def add(x , y)
     return x + y
  end

  def subtract(x, y)
    return x -y
  end

  def multiply(x , y)
    return x * y
  end

  def divide(x , y)
    return x / y
  end

  def modulo(x , y)
    return x % y
  end

  def pow(x, y)
    return x ** y
  end

end


puts
puts "<<arithmetic ops>>"
arithmeticOp = ArithmeticOps.new
puts "add = #{arithmeticOp.add(x, y)}"
puts "subtract = #{arithmeticOp.subtract(x, y)}"
puts "multiply = #{arithmeticOp.multiply(x, y)}"
puts "divide = #{arithmeticOp.divide(x, y)}"
puts "modulo = #{arithmeticOp.modulo(x, y)}"
puts "pow = #{arithmeticOp.pow(x, y)}"



# comparison operators : == != < <= > >= <=> eql? equal? ===
age = 10
if(age == 10)
  puts "age is 10"
end

wage = 100.0
if (wage > 0 && wage < 100.0)
  puts "your wage is low."
elsif(wage >= 100.0 && wage < 1000.0)
  puts "your wage is average."
else
  puts "your wage is high."
end

a = 10
b = 20
puts a <=> b
puts b <=> a


# assignment operators : += -= *= /= %= **=
# parallel assignment
a , b , c = 1 , 2, 3


# bitwise operators : & | ^ ~ << >>


# logical operators: && and || or ! not

# ternary operators:  ?:

# range operators: .. ...

puts (defined? a )
puts (defined? local)
puts (defined? hello)
puts (defined? SimpleMath)
puts (defined? add)
puts (defined? yield)