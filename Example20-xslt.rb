# could not install xslt library , but found another library xml/xslt
# require "xslt"

require "xml/xslt"

xslt = XML::XSLT.new
xslt.xml = "test-xslt.xml"
xslt.xsl = "test-xslt.xsl"

out = xslt.serve
print out
html = "xslt-result.html"
dest_html = File.new html  , "w"
dest_html.write out
dest_html.close


File.delete html
# rexml support
require "rexml/document"
xslt = XML::XSLT.new
xslt.xml = REXML::Document.new File.read "test-xslt.xml"
xslt.xsl = REXML::Document.new File.read "test-xslt.xsl"
out = xslt.serve
print out

dest_html = File.new html , "w"
dest_html.write out
dest_html.close