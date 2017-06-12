class RubyWorker
  def initialize(id, name , age, wage , active)
    @id = id
    @name = name
    @age = age
    @wage = wage
    @active = active
    end
=begin
 rb = RubyWorker.new(...)
id = rb.instance_variable_get(:@id)
puts id
rb.instance_variable_set(:@id , 10)
=end

   def to_s
    return "[" + @id.to_s + " , " + @name +" , " + @age.to_s + " , " + @wage.to_s + " , " \
      + @active.to_s + "]"
   end
end