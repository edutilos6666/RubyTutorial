module MathSupport
  def add(x , y)
    return x +y
  end

  def subtract(x , y)
    return x -y
  end

  def multiply(x , y)
    return x * y
  end

  def divide(x , y)
    return x / y
  end

  def pow(x, y)
    return x ** y
  end

  def modulo(x, y)
    return x % y
  end


  class SimpleMath
    def initialize(x, y)
      @x = x
      @y = y
    end

    def add()
      return @x +  @y
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

    def pow()
      return @x ** @y
    end

    def modulo
      return @x % @y
    end

  end


 class ComplexNumber
   def initialize(re = 0, im = 0 )
     @re = re
     @im = im
   end
   def get_re
     return self.instance_variable_get(:@re)
   end

   def get_im
     self.instance_variable_get(:@im)
   end

   def set_re(new_re)
     self.instance_variable_set(:@re, new_re)
   end

   def set_im(new_im)
     self.instance_variable_set(:@im , new_im)
   end

   def add(other)
     res = ComplexNumber.new
     res.set_re(@re+ other.get_re)
     res.set_im(@im + other.get_im)
     return res
   end

   def subtract(other)
     res = ComplexNumber.new
     res.set_re(@re - other.get_re)
     res.set_im(@im - other.get_im)
     return res
   end

   def multiply(other)
     res = ComplexNumber.new
     res.set_re(@re*other.get_re + @im * other.get_im)
     res.set_im(@re*other.get_im - @im * other.get_re)
     return res
   end

   def to_s
     return "["+ @re.to_s + " , " + @im.to_s + "]"
   end
 end

end