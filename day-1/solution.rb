file = File.open(File.expand_path('../input.txt', __FILE__), 'rb')
contents = file.read.strip.split(//)
file.close # Gotta close it to save memory

p contents.map { |x| x == '(' ? 1 : -1 }.reduce(:+)
