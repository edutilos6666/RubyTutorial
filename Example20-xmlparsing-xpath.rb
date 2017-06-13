require "rexml/document"

include REXML

xmlfile = File.new "movies.xml"
xmldoc = Document.new xmlfile

first_movie = XPath.first xmldoc , "//movie"
p first_movie


XPath.each(xmldoc , "//movie") {|movie|
 puts movie.attributes["title"]
}


puts
#type
types = XPath.match(xmldoc , "//type").map  {|type| type.text}
puts "<<Types>>"
puts types

puts
#format
formats = XPath.match(xmldoc, "//format").map {|format| format.text}
puts "<<Formats>>"
puts formats


