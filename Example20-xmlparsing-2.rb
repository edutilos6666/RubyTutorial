require "rexml/document"
require "rexml/streamlistener"

include REXML


class MyListener
  include REXML::StreamListener

  def tag_start(*args)
    puts "tag_start = #{args.join(',')}"
  end

  def text(data)
    return if data =~ /^\w*$/
    puts data
  end
end


xmlfile = File.new "movies.xml"
listener = MyListener.new
Document.parse_stream(xmlfile, listener)