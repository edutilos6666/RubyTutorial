r1 = 0..10 # [0 , 10]
p r1
p r1.min
p r1.max
p r1.step
p r1.begin
p r1.end


r1.each {|v| p v}

p r1.include?(1)
p r1.include? 100
p r1.reject {|el| el % 2 == 0}
p r1.to_a


r2 = "fob".. "foo"
p r2.to_a
p r2

score = 70
result = case score
           when 0...40 then "[0,40)"
           when 40..100 then "[40,100]"
           else "> 100"
         end

p result


case score
  when 0...40
    p "hello"
  when 40...100
    p "bye"
  else
    p "unknown error"
end


if((1...100) === 5)
  p "5 is within range"
end