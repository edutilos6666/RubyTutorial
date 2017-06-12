names = Array.new
p names

names = Array.new(10)
p names


names = Array.new(10 , "foo")
p names


nums = Array.new(10) {|e| e = e*2}
p nums

nums = Array(0..9)
p nums


nums = [1, 2, 3]
p nums


names = Array.new
names << "foo" << "bar" << "bim" << "pako" << "edu"
p names

names.insert(0 , "new_foo")
p names
names.push("new_edu")
p names
popped = names.pop()
p popped
p names
names.unshift("old_foo", "old_bar", "old_bim")
p names
names.push("old_foo", "old_bar", "old_bim")
p names
names.pop()
names.pop()
names.pop()
shifted = names.shift()
p shifted
p names
names.shift()
names.shift
p names


names.replace(["new_foo", "new_bar", "new_bim"])
p names
p names.size


nums = [1, 2, 3, 4] & [3, 4, 5]
p nums
nums += [10]
p nums

nums -= [10]
p nums


nums += [5,6,7,8,9,10]

p nums.bsearch {|x| x > 3 }

p nums.select  {|x| x% 2 == 0}
p nums.select {|x| x %2 != 0}

p nums.at(0)
# nums = %w{a b c d e}
p nums.values_at(1, 3, 5)


a1 = [1, 3, 5, 7]
a2 = [2, 4, 6, 8]
a3 = ["foo", "bar", "bim", "pako"]
res = a3.zip(a1, a2)
p res


p a1 | a2


# pack
chars = ["a", "b", 'c']
p chars.pack("A3A3A3")
p chars.pack("a3a3a3")
nums = [65, 66 , 67, 68]
p nums.pack("cccc")