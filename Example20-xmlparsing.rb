require "rexml/document"
include REXML

xmlfile = File.new("movies.xml")
xmldoc = Document.new(xmlfile)

root = xmldoc.root
shelf = root.attributes["shelf"]
puts "Shelf = #{shelf}"
# puts root
puts "<<Movie Titles>>"
root.elements.each ("movie") do |movie|
  title = movie.attributes["title"]
  puts title
end
puts
puts "<<Movie Types>>"
root.elements.each("movie/type") do |type|
  puts type.text
end
puts
puts "<<Movie format>>"
root.elements.each("movie/format") do |format|
  puts format.text
end

puts
puts "<<Movie year>>"
root.elements.each ("movie/year") do |year|
  puts year.text
end

puts
puts "<<Movie rating>>"
root.elements.each ("movie/rating") do |rating|
  puts rating.text
end
puts
puts "<<Movie stars>>"
root.elements.each ("movie/stars") do |stars|
  puts stars.text
end
puts
puts "<<Movie description>>"
root.elements.each ("movie/description") do |description|
  puts description.text
end
puts
puts "<<Movie episodes>>"
root.elements.each ("movie/episodes") do |episodes|
  puts episodes.text
end


# using xmldoc to fetch infos
puts
puts "<<Movie titles>>"
xmldoc.elements.each("collection/movie") do |movie|
  puts movie.attributes["title"]
end

puts
puts "<<Movie description>>"
xmldoc.elements.each("collection/movie/description") do |description|
  puts description.text
end