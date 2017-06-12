# get class informations
class Clazz1
  puts "class = #{self.class}"
  puts "name = #{self.name}"
end



# simple Class with attr_reader , attr_writer => attr_accessor
class Clazz2
  attr_accessor :id , :name , :age, :wage
  def initialize(id , name, age, wage)

=begin
    that does not work :(
    require id > 0
    require name[/[a-zA-Z]+/] == name
    require age >= 10 && age <= 100
    require wage >= 100.0 && wage <= 1000.0
=end
=begin
    @id = id
    @name = name
    @age = age
    @wage = wage
=end
@id , @name , @age , @wage = id , name, age, wage
  end

  def to_s
    "[#@id, #@name , #@age, #@wage]"
  end
end


c1 = Clazz2.new(1, "foo", 10 , 100.0)
puts c1


# Class with static constants , variables and methods
class Clazz3
  A , B = "a", "b"
  @@counter = 0
  def initialize()
    @@counter += 1
  end

  def self.get_count
    return @@counter
  end


  def self.add(x ,y )
    return x +y
  end

  def self.subtract(x, y)
    return x -y
  end
end

c1 = Clazz3.new
puts Clazz3.get_count
c2 = Clazz3.new
puts Clazz3.get_count
puts Clazz3.add(10 , 3)
puts Clazz3::subtract 10 , 3
puts Clazz3::A
puts Clazz3::B




# freezing object
c1 = Clazz2.new 1, "foo", 10, 100.0
puts c1.frozen?
c1.name = "new_foo"
puts c1
c1.freeze
=begin
c1.name = "old_foo"
puts c1
=end
puts c1.frozen?



# Operator overloading
class Clazz4
  attr_accessor :w , :h
  def initialize(w, h)
    @w , @h = w, h
  end

  def +(other)
    Clazz4.new(@w + other.w , @h + other.h)
  end

  def -(other)
    Clazz4.new(@w - other.w , @h - other.h)
  end

  def -@
    Clazz4.new(-@w, -@h)
  end

  def *(scalar)
    Clazz4.new(@w*scalar , @h*scalar)
  end

  def to_s
    "[#@w, #@h]"
  end
end

c1 = Clazz4.new(1, 1)
c2 = Clazz4.new(2, 2)
puts c1+ c2
puts c1 - c2
puts -c1
puts c1*10




#methods overloading
# in class inheritance  constructors are also inherited!
class Clazz5
  attr_accessor :x, :y
  def initialize(x, y)
    @x = x
    @y = y
  end

  def print_props
    puts "[#@x, #@y]"
  end
end

class Clazz5Child < Clazz5
  def print_props
    puts "Hello from Clazz5Child"
    puts "[#@x, #@y]"
  end

 #  protected :print_props
 # private :print_props
 # public :print_props
end

c = Clazz5Child.new 1, 2
c.print_props