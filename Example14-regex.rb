str = "Cats are smarter than Dogs"
if str =~ /.*cat.*/i
 puts "str1 contains Cat"
end

if str =~ /.*Dog.*/
 puts "str1 contains Dog"
end

if str =~ /.*Animal.*/
  puts "str1 contains Animal"
else
  puts "str1 doesn't contain Animal"
end

str = """
foo\n
bar
"""
if str =~ /.*bar.*/i
  puts "str contains bar"
end


puts /needle/.match("haystack")
puts /hay/.match("haystack")


phone_number = "123-123-123 # it is my number"
pn = phone_number.sub(/#.*/, "")
puts pn, pn.size
pn = phone_number.gsub(/\D*/, "")
puts pn , pn.size

#false
=begin
temp = String.new(phone_number)
temp.sub!(/^(([0-9]|-)+)/, "")
puts temp
=end
