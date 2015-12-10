file = File.open(File.expand_path('../input.txt', __FILE__), 'rb')
contents = file.read.strip.split(//)
file.close # Gotta close it to save memory

# To what floor do the instructions take Santa?
def solution_one(contents)
  contents.map { |x| x == '(' ? 1 : -1 }.reduce(:+)
end

# What is the position of the character that causes Santa
# to first enter the basement?
def solution_two(contents)
  @x = 0
  contents.map { |x| x == '(' ? 1 : -1 }.each_with_index do |i, index|
    @x += i

    if @x == -1
      @position = index + 1
      break
    end
  end

  @position
end

p solution_one contents
p solution_two contents
