# for array
arr = [1, 2, 3, 4, 5]
arr.each {|el| p el}

puts


# for hash
h = {:foo=> 10 , :bar=> 20 , :bim => 30}
h.each {|k, v| p k , v}
puts


# for range
r = 0..10
r.each {|el| p el}
puts

p arr.collect

coll = arr.collect
coll.each {|el| p el}
p h.collect
coll = h.collect
coll.each {|k,v| p k , v}

p r.collect
coll = r.collect
coll.each {|el| p el}



coll = arr.collect {|el| el**2}
coll.each {|el| p el}