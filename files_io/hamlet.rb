require 'open-uri'

# Reads hamlet.txt from the given URL
# Saves it to a local file on your hard drive named "hamlet.txt"
# Re-opens that local version of hamlet.txt and prints out every 42nd line to the screen

url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"

File.open("hamlet.txt", "w"){ |text| text.puts open(url).read}

file = File.open("hamlet.txt", 'r')
while !file.eof?
  line = file.readline
  puts line
end