filename = "out1.txt"
out = File.new(filename, "w")

if out
  out.write("hello\n")
  out.write("world\n")
  out.write("!")
else
  puts "Unable to open file #{filename}"
end

out.close

in_file = File.new(filename, "r")

if in_file
  lines = in_file.readlines
  lines.each {|line| puts line}
else
  puts "Unable to open file #{filename}"
end

in_file.close

puts
in_file = File.new(filename, "r")
if in_file
  while !in_file.eof?
    print in_file.readchar
  end
else
  puts "Unable to open file #{filename}"
end
in_file.close

puts
puts
in_file = File.new(filename, "r")
if in_file
  while !in_file.eof?
    line = in_file.readline
    print line
  end
else
  puts "Unable to open file #{filename}"
end

in_file.close

puts



in_file = File.new(filename, "r")
if in_file
  puts in_file.sysread(in_file.size)
else
  puts "Unable to open file #{filename}"
end
in_file.close

puts

out = File.new(filename, "w")
if out
  out.syswrite(10.to_s+ "\n")
  out.syswrite("foobar\n")
  out.syswrite("edu\n")
  out.syswrite("true\n")
  out.syswrite(100.0.to_s+"\n")
else
  puts "Unable to open file #{filename}"
end

out.close

in_file = File.new(filename, "r")
if in_file
  lines = in_file.readlines
  lines.each {|line| puts line}
else
  puts "Unable to open file #{filename}"
end

in_file.close
puts




#each ch
puts
in_file = File.new(filename, "r")
if in_file
  in_file.each_char {|ch| print ch}
else
  puts "Unable to open file #{filename}"
end
in_file.close
puts

# each byte
puts
in_file = File.new(filename, "r")
if in_file
  in_file.each_byte {|b| puts b}
else
  puts "Unable to open file #{filename}"
end
in_file.close
puts



# IO.readlines
puts
lines = IO.readlines(filename)
lines.each {|line| puts line}

# IO.foreach
puts
IO.foreach(filename) {|line| puts line}



# create , rename , delete
fh = File.new("temp1.txt", "w")
fh.close
fh = File.new("temp2.txt", "w")
fh.close
fh = File.new("temp3.txt", "w")
fh.close

File.rename("temp2.txt", "new_temp2.txt")
File.delete("temp3.txt")

# chmod
filename = "temp1.txt"
executable = File.executable?(filename)
writable = File.writable?(filename)
readable = File.readable?(filename)
print executable , " , " , writable, ", ", readable , "\n"

file = File.new(filename, "w")
file.chmod(0777 )
executable = File.executable?(filename)
writable = File.writable?(filename)
readable = File.readable?(filename)
print executable , " , " , writable, ", ", readable , "\n"


p File.directory?(filename)
p File.file?(filename)
p File.symlink?(filename)
p File.readable? filename
p File.writable? filename
p File.executable? filename
p File.setgid? filename
p File.setuid? filename
p File.exists? filename
p File.zero? filename
p File.size? filename
p File.ftype filename
p File.ctime filename
p File.atime filename
p File.mtime filename


p Dir.pwd
current = Dir.pwd
Dir.chdir("/home/edutilos")
p Dir.pwd

Dir.chdir current
Dir.foreach(current)  {|entry| p entry}

p Dir.entries(Dir.pwd).join(", ")


Dir.mkdir "temp_dir"
Dir.delete "temp_dir"


# temporary file
require 'tmpdir'
p Dir.tmpdir
filename = File.join(Dir.tmpdir , "foo.txt")
temp_file = File.new(filename, "w")
temp_file.puts "hello world"
temp_file.close

temp_file = File.new(filename, "r")
temp_file.each_line {|line| puts line}
temp_file.close
File.delete(filename)