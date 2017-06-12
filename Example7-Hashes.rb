h1 = Hash.new
p h1
h2 = Hash.new("default")
p h2

h3 = {:foo=> 10 , :bar=>20 , :bim => 30}
p h3
p h3.size
p h3[:foo]
p h3[:bim]



p h3.keys
p h3.values


h3.keys.each do |k|
  p k
end

h3.values.each do |v|
  p v
end


h3.keys.each {|k| p k }
h3.values.each {|v| p v}
h3.each {|k,v| p k , v }
h3.each_pair {|k,v| p k , v}
h3.each_key {|k| p k}
h3.each_value {|v| p v}


p h3.has_key? :foo
p h3.has_key? :new_foo
p h3.has_value? 10
p h3.has_value? 100


p h3.values_at(:foo, :bim)
p h3.to_a
p h3.to_h
p h3.to_proc
p h3.to_s


p h3.flatten
p h3.any?

h3 = Hash.new
p h3.any?


h3 = {:foo=> 10 , :bar=>20 , :bim => 30}
h3.delete(:foo)
p h3

h3 = {:foo=> 10 , :bar=>20 , :bim => 30}
h3.delete_if {|k| k == :foo || k == :bar}
p h3

p h3.empty?

p h3.member?(:foo)
p h3.member?(:bim)


h3 = {:foo=> 10 , :bar=>20 , :bim => 30}
p h3.index(10)

h4 = {:foo=> 20, :edu=> 30}
p h3.merge(h4)
p h3

h3.replace(h4)
p h3

h3 = {:foo=> 10 , :bar=>20 , :bim => 30}
p h3.reject {|k| k == :foo || k == :bar}
p h3